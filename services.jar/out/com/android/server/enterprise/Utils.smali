.class public Lcom/android/server/enterprise/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static mLogEnbaled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/Set",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, a:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p1, b:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p2, wildcardEntry:Ljava/lang/Object;,"TT;"
    if-eqz p2, :cond_14

    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, count:I
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 495
    add-int/lit8 v0, v0, 0x1

    .line 497
    :cond_b
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 499
    add-int/lit8 v0, v0, 0x1

    .line 505
    .end local v0           #count:I
    :cond_13
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, effective:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, wildCardEntry:Ljava/lang/Object;,"TT;"
    .local p2, input:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x0

    .line 685
    const-string v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    .line 697
    :goto_10
    return v0

    .line 689
    :cond_11
    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 693
    :cond_2d
    const/4 v0, 0x1

    goto :goto_10

    :cond_2f
    move v0, v1

    .line 697
    goto :goto_10
.end method

.method private static isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, a:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p1, wildcardEntry:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_a

    .line 515
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 517
    const/4 v0, 0x1

    .line 521
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, admin1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p2, wildcardEntry:Ljava/lang/Object;,"TT;"
    const-string v4, "WHITELIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 675
    .end local p1           #admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_e
    return-object p1

    .line 573
    .restart local p1       #admin2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_f
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object p1, p0

    .line 575
    goto :goto_e

    .line 581
    :cond_1f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 583
    .local v0, effectiveListMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    const-string v4, "BLACKLIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v4, "WHITELIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 593
    const-string v4, "BLACKLIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 597
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 599
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 605
    const-string v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v4, v5, p2}, Lcom/android/server/enterprise/Utils;->getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

    move-result v3

    .line 609
    .local v3, wildcardSetCount:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_e2

    .line 615
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 617
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 665
    :goto_b9
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 671
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p1, v0

    .line 675
    goto/16 :goto_e

    .line 619
    :cond_e2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_117

    .line 629
    const-string v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/Utils;->isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_114

    .line 631
    move-object v1, v0

    .line 633
    .local v1, nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, p1

    .line 643
    .local v2, wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_f5
    const-string v4, "WHITELIST"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 645
    const-string v4, "WHITELIST"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_b9

    .line 637
    .end local v1           #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2           #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_114
    move-object v1, p1

    .line 639
    .restart local v1       #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v2, v0

    .restart local v2       #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    goto :goto_f5

    .line 651
    .end local v1           #nonWildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v2           #wildCardListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_117
    const-string v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 657
    const-string v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string v5, "BLACKLIST"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_b9
.end method

.method public static readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "aPropName"
    .parameter "aFileName"

    .prologue
    const/4 v7, 0x0

    .line 233
    const-string v0, "readPropertyValue"

    .line 239
    .local v0, TAG:Ljava/lang/String;
    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_48

    .line 253
    .local v3, lFReader:Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v8, 0x200

    invoke-direct {v2, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 257
    .local v2, lBufReader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 259
    .local v4, lLine:Ljava/lang/String;
    :cond_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_87

    .line 261
    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 265
    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, lParsedString:[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_64

    const/4 v8, 0x1

    aget-object v6, v5, v8

    .line 269
    .local v6, result:Ljava/lang/String;
    :goto_32
    const-string v8, "null"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_67

    move-result v7

    if-eqz v7, :cond_3b

    .line 271
    const/4 v6, 0x0

    .line 289
    :cond_3b
    if-eqz v3, :cond_41

    .line 291
    :try_start_3d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 293
    const/4 v3, 0x0

    .line 297
    :cond_41
    if-eqz v2, :cond_47

    .line 299
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_46} :catch_9f

    .line 301
    const/4 v2, 0x0

    .line 313
    .end local v2           #lBufReader:Ljava/io/BufferedReader;
    .end local v3           #lFReader:Ljava/io/FileReader;
    .end local v4           #lLine:Ljava/lang/String;
    .end local v5           #lParsedString:[Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :cond_47
    :goto_47
    return-object v6

    .line 241
    :catch_48
    move-exception v1

    .line 243
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File access error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 247
    goto :goto_47

    .line 267
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lFReader:Ljava/io/FileReader;
    .restart local v4       #lLine:Ljava/lang/String;
    .restart local v5       #lParsedString:[Ljava/lang/String;
    :cond_64
    :try_start_64
    const-string v6, ""
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_66} :catch_67

    goto :goto_32

    .line 279
    .end local v5           #lParsedString:[Ljava/lang/String;
    :catch_67
    move-exception v1

    .line 281
    .local v1, e:Ljava/lang/Exception;
    :try_start_68
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_79

    .line 289
    if-eqz v3, :cond_71

    .line 291
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 293
    const/4 v3, 0x0

    .line 297
    :cond_71
    if-eqz v2, :cond_77

    .line 299
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_76} :catch_9a

    .line 301
    const/4 v2, 0x0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_77
    :goto_77
    move-object v6, v7

    .line 283
    goto :goto_47

    .line 287
    :catchall_79
    move-exception v7

    .line 289
    if-eqz v3, :cond_80

    .line 291
    :try_start_7c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 293
    const/4 v3, 0x0

    .line 297
    :cond_80
    if-eqz v2, :cond_86

    .line 299
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_85} :catch_95

    .line 301
    const/4 v2, 0x0

    .line 287
    :cond_86
    :goto_86
    throw v7

    .line 289
    :cond_87
    if-eqz v3, :cond_8d

    .line 291
    :try_start_89
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 293
    const/4 v3, 0x0

    .line 297
    :cond_8d
    if-eqz v2, :cond_93

    .line 299
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_92} :catch_a4

    .line 301
    const/4 v2, 0x0

    :cond_93
    :goto_93
    move-object v6, v7

    .line 313
    goto :goto_47

    .line 305
    :catch_95
    move-exception v1

    .line 307
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_86

    .line 305
    .local v1, e:Ljava/lang/Exception;
    :catch_9a
    move-exception v1

    .line 307
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_77

    .line 305
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #lParsedString:[Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :catch_9f
    move-exception v1

    .line 307
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 305
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #lParsedString:[Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :catch_a4
    move-exception v1

    .line 307
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_93
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21
    .parameter "aPropName"
    .parameter "aPropValue"
    .parameter "aFileName"

    .prologue
    .line 349
    const-string v1, "writePropertyValue"

    .line 351
    .local v1, TAG:Ljava/lang/String;
    const/4 v11, 0x0

    .line 353
    .local v11, lSuccess:Z
    const/4 v12, 0x0

    .line 355
    .local v12, ps:Ljava/io/PrintStream;
    const/4 v5, 0x0

    .line 357
    .local v5, lFReader:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 361
    .local v3, lBufReader:Ljava/io/BufferedReader;
    :try_start_6
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v7, lFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_23

    .line 365
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 367
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1a4

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-static/range {v14 .. v17}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 385
    :cond_23
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_da
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_28} :catch_10b

    .line 387
    .end local v5           #lFReader:Ljava/io/FileReader;
    .local v6, lFReader:Ljava/io/FileReader;
    :try_start_28
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v14, 0x200

    invoke-direct {v4, v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_100
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2f} :catch_10e

    .line 391
    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .local v4, lBufReader:Ljava/io/BufferedReader;
    :try_start_2f
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v14, ""

    invoke-direct {v10, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 393
    .local v10, lStrBuffer:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 395
    .local v8, lFound:Z
    :goto_37
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, lLine:Ljava/lang/String;
    if-eqz v9, :cond_90

    .line 397
    const-string v14, "="

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6a

    .line 401
    const/4 v8, 0x1

    .line 403
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 407
    :cond_6a
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    const-string v14, "line.separator"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_76
    .catchall {:try_start_2f .. :try_end_76} :catchall_103
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_76} :catch_77

    goto :goto_37

    .line 439
    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    :catch_77
    move-exception v2

    move-object v3, v4

    .end local v4           #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lBufReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .line 441
    .end local v6           #lFReader:Ljava/io/FileReader;
    .end local v7           #lFile:Ljava/io/File;
    .local v2, e:Ljava/lang/Exception;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    :goto_7a
    :try_start_7a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_da

    .line 447
    if-eqz v5, :cond_83

    .line 449
    :try_start_7f
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 451
    const/4 v5, 0x0

    .line 457
    :cond_83
    if-eqz v3, :cond_89

    .line 459
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_88} :catch_f3

    .line 461
    const/4 v3, 0x0

    .line 471
    .end local v2           #e:Ljava/lang/Exception;
    :cond_89
    :goto_89
    if-eqz v12, :cond_8f

    .line 473
    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    .line 475
    .end local v12           #ps:Ljava/io/PrintStream;
    :goto_8e
    const/4 v12, 0x0

    .line 481
    .restart local v12       #ps:Ljava/io/PrintStream;
    :cond_8f
    :goto_8f
    return v11

    .line 417
    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lBufReader:Ljava/io/BufferedReader;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v7       #lFile:Ljava/io/File;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    :cond_90
    if-nez v8, :cond_b9

    .line 419
    :try_start_92
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    const-string v14, "line.separator"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    :cond_b9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_bc
    .catchall {:try_start_92 .. :try_end_bc} :catchall_103
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_bc} :catch_77

    .line 431
    const/4 v3, 0x0

    .line 433
    .end local v4           #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lBufReader:Ljava/io/BufferedReader;
    :try_start_bd
    new-instance v13, Ljava/io/PrintStream;

    invoke-direct {v13, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_100
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c2} :catch_10e

    .line 435
    .end local v12           #ps:Ljava/io/PrintStream;
    .local v13, ps:Ljava/io/PrintStream;
    :try_start_c2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_107
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c9} :catch_112

    .line 437
    const/4 v11, 0x1

    .line 447
    if-eqz v6, :cond_11a

    .line 449
    :try_start_cc
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_f8

    .line 451
    const/4 v5, 0x0

    .line 457
    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    :goto_d0
    if-eqz v3, :cond_d4

    .line 459
    :try_start_d2
    throw v3
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d3} :catch_fe

    .line 461
    const/4 v3, 0x0

    .line 471
    :cond_d4
    :goto_d4
    if-eqz v13, :cond_117

    .line 473
    invoke-virtual {v13}, Ljava/io/PrintStream;->close()V

    goto :goto_8e

    .line 445
    .end local v7           #lFile:Ljava/io/File;
    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    :catchall_da
    move-exception v14

    .line 447
    :goto_db
    if-eqz v5, :cond_e1

    .line 449
    :try_start_dd
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 451
    const/4 v5, 0x0

    .line 457
    :cond_e1
    if-eqz v3, :cond_e7

    .line 459
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e6} :catch_ee

    .line 461
    const/4 v3, 0x0

    .line 471
    :cond_e7
    :goto_e7
    if-eqz v12, :cond_ed

    .line 473
    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    .line 475
    const/4 v12, 0x0

    .line 445
    :cond_ed
    throw v14

    .line 465
    :catch_ee
    move-exception v2

    .line 467
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e7

    .line 465
    .local v2, e:Ljava/lang/Exception;
    :catch_f3
    move-exception v2

    .line 467
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_89

    .line 465
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v7       #lFile:Ljava/io/File;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :catch_f8
    move-exception v2

    move-object v5, v6

    .line 467
    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    :goto_fa
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d4

    .line 465
    .end local v2           #e:Ljava/io/IOException;
    :catch_fe
    move-exception v2

    goto :goto_fa

    .line 445
    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v12       #ps:Ljava/io/PrintStream;
    :catchall_100
    move-exception v14

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto :goto_db

    .end local v3           #lBufReader:Ljava/io/BufferedReader;
    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v4       #lBufReader:Ljava/io/BufferedReader;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    :catchall_103
    move-exception v14

    move-object v3, v4

    .end local v4           #lBufReader:Ljava/io/BufferedReader;
    .restart local v3       #lBufReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto :goto_db

    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :catchall_107
    move-exception v14

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    move-object v12, v13

    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    goto :goto_db

    .line 439
    .end local v7           #lFile:Ljava/io/File;
    .end local v8           #lFound:Z
    .end local v9           #lLine:Ljava/lang/String;
    .end local v10           #lStrBuffer:Ljava/lang/StringBuffer;
    :catch_10b
    move-exception v2

    goto/16 :goto_7a

    .end local v5           #lFReader:Ljava/io/FileReader;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v7       #lFile:Ljava/io/File;
    :catch_10e
    move-exception v2

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto/16 :goto_7a

    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v8       #lFound:Z
    .restart local v9       #lLine:Ljava/lang/String;
    .restart local v10       #lStrBuffer:Ljava/lang/StringBuffer;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :catch_112
    move-exception v2

    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    move-object v12, v13

    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    goto/16 :goto_7a

    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :cond_117
    move-object v12, v13

    .end local v13           #ps:Ljava/io/PrintStream;
    .restart local v12       #ps:Ljava/io/PrintStream;
    goto/16 :goto_8f

    .end local v5           #lFReader:Ljava/io/FileReader;
    .end local v12           #ps:Ljava/io/PrintStream;
    .restart local v6       #lFReader:Ljava/io/FileReader;
    .restart local v13       #ps:Ljava/io/PrintStream;
    :cond_11a
    move-object v5, v6

    .end local v6           #lFReader:Ljava/io/FileReader;
    .restart local v5       #lFReader:Ljava/io/FileReader;
    goto :goto_d0
.end method

.method public static writeToLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "logLevel"
    .parameter "tag"
    .parameter "logMessage"

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_a

    .line 155
    packed-switch p0, :pswitch_data_20

    .line 189
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_a
    :goto_a
    return-void

    .line 159
    :pswitch_b
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 165
    :pswitch_f
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 171
    :pswitch_13
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 177
    :pswitch_17
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 183
    :pswitch_1b
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 155
    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_17
        :pswitch_b
        :pswitch_13
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public static writeToLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "logLevel"
    .parameter "tag"
    .parameter "logMessage"
    .parameter "tr"

    .prologue
    .line 201
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_7

    .line 203
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_7
    return-void
.end method

.method public static writeToLog(Ljava/lang/String;)V
    .registers 2
    .parameter "logMessage"

    .prologue
    .line 127
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_9

    .line 129
    const-string v0, "EDM : "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_9
    return-void
.end method

.method public static writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "logMessage"

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/server/enterprise/Utils;->mLogEnbaled:Z

    if-eqz v0, :cond_7

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_7
    return-void
.end method
