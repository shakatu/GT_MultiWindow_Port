.class Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodFileManager"
.end annotation


# static fields
.field private static final ADDITIONAL_SUBTYPES_FILE_NAME:Ljava/lang/String; = "subtypes.xml"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_IME_SUBTYPE_EXTRA_VALUE:Ljava/lang/String; = "imeSubtypeExtraValue"

.field private static final ATTR_IME_SUBTYPE_LOCALE:Ljava/lang/String; = "imeSubtypeLocale"

.field private static final ATTR_IME_SUBTYPE_MODE:Ljava/lang/String; = "imeSubtypeMode"

.field private static final ATTR_IS_AUXILIARY:Ljava/lang/String; = "isAuxiliary"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final INPUT_METHOD_PATH:Ljava/lang/String; = "inputmethod"

.field private static final NODE_IMI:Ljava/lang/String; = "imi"

.field private static final NODE_SUBTYPE:Ljava/lang/String; = "subtype"

.field private static final NODE_SUBTYPES:Ljava/lang/String; = "subtypes"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "system"


# instance fields
.field private final mAdditionalInputMethodSubtypeFile:Lcom/android/internal/os/AtomicFile;

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtypesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4120
    .local p1, methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4118
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mSubtypesMap:Ljava/util/HashMap;

    .line 4121
    if-nez p1, :cond_14

    .line 4122
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "methodMap is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4124
    :cond_14
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    .line 4125
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4126
    .local v2, systemDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v3, "inputmethod"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4127
    .local v0, inputMethodDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 4128
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t create dir.: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    :cond_4a
    new-instance v1, Ljava/io/File;

    const-string v3, "subtypes.xml"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4131
    .local v1, subtypeFile:Ljava/io/File;
    new-instance v3, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v3, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Lcom/android/internal/os/AtomicFile;

    .line 4132
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_66

    .line 4134
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mSubtypesMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Lcom/android/internal/os/AtomicFile;

    invoke-static {v3, v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V

    .line 4139
    :goto_65
    return-void

    .line 4137
    :cond_66
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mSubtypesMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Lcom/android/internal/os/AtomicFile;

    invoke-static {v3, v4}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;)V

    goto :goto_65
.end method

.method static synthetic access$1100(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4102
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->deleteAllInputMethodSubtypes(Ljava/lang/String;)V

    return-void
.end method

.method private deleteAllInputMethodSubtypes(Ljava/lang/String;)V
    .registers 6
    .parameter "imiId"

    .prologue
    .line 4142
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4143
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4144
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mSubtypesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Lcom/android/internal/os/AtomicFile;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    invoke-static {v0, v2, v3}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V

    .line 4146
    monitor-exit v1

    .line 4147
    return-void

    .line 4146
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private static readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;)V
    .registers 25
    .parameter
    .parameter "subtypesFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Lcom/android/internal/os/AtomicFile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4221
    .local p0, allSubtypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 4293
    :cond_4
    :goto_4
    return-void

    .line 4222
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->clear()V

    .line 4223
    const/4 v15, 0x0

    .line 4225
    .local v15, fis:Ljava/io/FileInputStream;
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v15

    .line 4226
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    .line 4227
    .local v17, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v15, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4228
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v19

    .line 4231
    .local v19, type:I
    :cond_1e
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_32

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 4232
    :cond_32
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 4233
    .local v14, firstNodeName:Ljava/lang/String;
    const-string v20, "subtypes"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_72

    .line 4234
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v21, "Xml doesn\'t start with subtypes"

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_48} :catch_48
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_48} :catch_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_48} :catch_100

    .line 4275
    .end local v14           #firstNodeName:Ljava/lang/String;
    .end local v17           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v19           #type:I
    :catch_48
    move-exception v12

    .line 4276
    .local v12, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_49
    const-string v20, "InputMethodManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error reading subtypes: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_49 .. :try_end_63} :catchall_159

    .line 4285
    if-eqz v15, :cond_4

    .line 4287
    :try_start_65
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_4

    .line 4288
    :catch_69
    move-exception v13

    .line 4289
    .local v13, e1:Ljava/io/IOException;
    const-string v20, "InputMethodManagerService"

    const-string v21, "Failed to close."

    .end local v12           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6e
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4236
    .end local v13           #e1:Ljava/io/IOException;
    .restart local v14       #firstNodeName:Ljava/lang/String;
    .restart local v17       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19       #type:I
    :cond_72
    :try_start_72
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 4237
    .local v11, depth:I
    const/4 v10, 0x0

    .line 4238
    .local v10, currentImiId:Ljava/lang/String;
    const/16 v18, 0x0

    .line 4240
    .local v18, tempSubtypesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_79
    :goto_79
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8d

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    if-le v0, v11, :cond_1e4

    :cond_8d
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1e4

    .line 4241
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_79

    .line 4243
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 4244
    .local v16, nodeName:Ljava/lang/String;
    const-string v20, "imi"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_129

    .line 4245
    const/16 v20, 0x0

    const-string v21, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4246
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_f2

    .line 4247
    const-string v20, "InputMethodManagerService"

    const-string v21, "Invalid imi id found in subtypes.xml"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_72 .. :try_end_c8} :catchall_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_72 .. :try_end_c8} :catch_48
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_c8} :catch_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_c8} :catch_100

    goto :goto_79

    .line 4278
    .end local v10           #currentImiId:Ljava/lang/String;
    .end local v11           #depth:I
    .end local v14           #firstNodeName:Ljava/lang/String;
    .end local v16           #nodeName:Ljava/lang/String;
    .end local v17           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #tempSubtypesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v19           #type:I
    :catch_c9
    move-exception v12

    .line 4279
    .local v12, e:Ljava/io/IOException;
    :try_start_ca
    const-string v20, "InputMethodManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error reading subtypes: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_ca .. :try_end_e4} :catchall_159

    .line 4285
    if-eqz v15, :cond_4

    .line 4287
    :try_start_e6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_eb

    goto/16 :goto_4

    .line 4288
    :catch_eb
    move-exception v13

    .line 4289
    .restart local v13       #e1:Ljava/io/IOException;
    const-string v20, "InputMethodManagerService"

    const-string v21, "Failed to close."

    goto/16 :goto_6e

    .line 4250
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #e1:Ljava/io/IOException;
    .restart local v10       #currentImiId:Ljava/lang/String;
    .restart local v11       #depth:I
    .restart local v14       #firstNodeName:Ljava/lang/String;
    .restart local v16       #nodeName:Ljava/lang/String;
    .restart local v17       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #tempSubtypesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v19       #type:I
    :cond_f2
    :try_start_f2
    new-instance v18, Ljava/util/ArrayList;

    .end local v18           #tempSubtypesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 4251
    .restart local v18       #tempSubtypesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fe
    .catchall {:try_start_f2 .. :try_end_fe} :catchall_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f2 .. :try_end_fe} :catch_48
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_fe} :catch_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_fe} :catch_100

    goto/16 :goto_79

    .line 4281
    .end local v10           #currentImiId:Ljava/lang/String;
    .end local v11           #depth:I
    .end local v14           #firstNodeName:Ljava/lang/String;
    .end local v16           #nodeName:Ljava/lang/String;
    .end local v17           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #tempSubtypesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v19           #type:I
    :catch_100
    move-exception v12

    .line 4282
    .local v12, e:Ljava/lang/NumberFormatException;
    :try_start_101
    const-string v20, "InputMethodManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error reading subtypes: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_101 .. :try_end_11b} :catchall_159

    .line 4285
    if-eqz v15, :cond_4

    .line 4287
    :try_start_11d
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_122

    goto/16 :goto_4

    .line 4288
    :catch_122
    move-exception v13

    .line 4289
    .restart local v13       #e1:Ljava/io/IOException;
    const-string v20, "InputMethodManagerService"

    const-string v21, "Failed to close."

    goto/16 :goto_6e

    .line 4252
    .end local v12           #e:Ljava/lang/NumberFormatException;
    .end local v13           #e1:Ljava/io/IOException;
    .restart local v10       #currentImiId:Ljava/lang/String;
    .restart local v11       #depth:I
    .restart local v14       #firstNodeName:Ljava/lang/String;
    .restart local v16       #nodeName:Ljava/lang/String;
    .restart local v17       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #tempSubtypesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v19       #type:I
    :cond_129
    :try_start_129
    const-string v20, "subtype"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_79

    .line 4253
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_13d

    if-nez v18, :cond_160

    .line 4254
    :cond_13d
    const-string v20, "InputMethodManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IME uninstalled or not valid.: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_157
    .catchall {:try_start_129 .. :try_end_157} :catchall_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_129 .. :try_end_157} :catch_48
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_157} :catch_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_129 .. :try_end_157} :catch_100

    goto/16 :goto_79

    .line 4285
    .end local v10           #currentImiId:Ljava/lang/String;
    .end local v11           #depth:I
    .end local v14           #firstNodeName:Ljava/lang/String;
    .end local v16           #nodeName:Ljava/lang/String;
    .end local v17           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #tempSubtypesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v19           #type:I
    :catchall_159
    move-exception v20

    if-eqz v15, :cond_15f

    .line 4287
    :try_start_15c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_15f} :catch_1da

    .line 4285
    :cond_15f
    :goto_15f
    throw v20

    .line 4257
    .restart local v10       #currentImiId:Ljava/lang/String;
    .restart local v11       #depth:I
    .restart local v14       #firstNodeName:Ljava/lang/String;
    .restart local v16       #nodeName:Ljava/lang/String;
    .restart local v17       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #tempSubtypesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v19       #type:I
    :cond_160
    const/16 v20, 0x0

    :try_start_162
    const-string v21, "icon"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4259
    .local v5, icon:I
    const/16 v20, 0x0

    const-string v21, "label"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4261
    .local v4, label:I
    const/16 v20, 0x0

    const-string v21, "imeSubtypeLocale"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4263
    .local v6, imeSubtypeLocale:Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, "imeSubtypeMode"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4265
    .local v7, imeSubtypeMode:Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, "imeSubtypeExtraValue"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4267
    .local v8, imeSubtypeExtraValue:Ljava/lang/String;
    const-string v20, "1"

    const/16 v21, 0x0

    const-string v22, "isAuxiliary"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 4269
    .local v9, isAuxiliary:Z
    new-instance v3, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct/range {v3 .. v9}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4272
    .local v3, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d8
    .catchall {:try_start_162 .. :try_end_1d8} :catchall_159
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_162 .. :try_end_1d8} :catch_48
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_1d8} :catch_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_162 .. :try_end_1d8} :catch_100

    goto/16 :goto_79

    .line 4288
    .end local v3           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4           #label:I
    .end local v5           #icon:I
    .end local v6           #imeSubtypeLocale:Ljava/lang/String;
    .end local v7           #imeSubtypeMode:Ljava/lang/String;
    .end local v8           #imeSubtypeExtraValue:Ljava/lang/String;
    .end local v9           #isAuxiliary:Z
    .end local v10           #currentImiId:Ljava/lang/String;
    .end local v11           #depth:I
    .end local v14           #firstNodeName:Ljava/lang/String;
    .end local v16           #nodeName:Ljava/lang/String;
    .end local v17           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #tempSubtypesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v19           #type:I
    :catch_1da
    move-exception v13

    .line 4289
    .restart local v13       #e1:Ljava/io/IOException;
    const-string v21, "InputMethodManagerService"

    const-string v22, "Failed to close."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15f

    .line 4285
    .end local v13           #e1:Ljava/io/IOException;
    .restart local v10       #currentImiId:Ljava/lang/String;
    .restart local v11       #depth:I
    .restart local v14       #firstNodeName:Ljava/lang/String;
    .restart local v17       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #tempSubtypesArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v19       #type:I
    :cond_1e4
    if-eqz v15, :cond_4

    .line 4287
    :try_start_1e6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1e9
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_1e9} :catch_1eb

    goto/16 :goto_4

    .line 4288
    :catch_1eb
    move-exception v13

    .line 4289
    .restart local v13       #e1:Ljava/io/IOException;
    const-string v20, "InputMethodManagerService"

    const-string v21, "Failed to close."

    goto/16 :goto_6e
.end method

.method private static writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V
    .registers 16
    .parameter
    .parameter "subtypesFile"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Lcom/android/internal/os/AtomicFile;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4176
    .local p0, allSubtypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p2, methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p2, :cond_70

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_70

    const/4 v6, 0x1

    .line 4177
    .local v6, isSetMethodMap:Z
    :goto_9
    const/4 v2, 0x0

    .line 4179
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual {p1}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 4180
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4181
    .local v7, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v10, "utf-8"

    invoke-interface {v7, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4182
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4183
    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 4184
    const/4 v10, 0x0

    const-string v11, "subtypes"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4185
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4186
    .local v5, imiId:Ljava/lang/String;
    if-eqz v6, :cond_72

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_72

    .line 4187
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IME uninstalled or not valid.: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_61} :catch_62

    goto :goto_35

    .line 4211
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imiId:Ljava/lang/String;
    .end local v7           #out:Lorg/xmlpull/v1/XmlSerializer;
    :catch_62
    move-exception v1

    .line 4212
    .local v1, e:Ljava/io/IOException;
    const-string v10, "InputMethodManagerService"

    const-string v11, "Error writing subtypes"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4213
    if-eqz v2, :cond_6f

    .line 4214
    invoke-virtual {p1, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 4217
    .end local v1           #e:Ljava/io/IOException;
    :cond_6f
    :goto_6f
    return-void

    .line 4176
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v6           #isSetMethodMap:Z
    :cond_70
    const/4 v6, 0x0

    goto :goto_9

    .line 4190
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #imiId:Ljava/lang/String;
    .restart local v6       #isSetMethodMap:Z
    .restart local v7       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_72
    const/4 v10, 0x0

    :try_start_73
    const-string v11, "imi"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4191
    const/4 v10, 0x0

    const-string v11, "id"

    invoke-interface {v7, v10, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4192
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 4193
    .local v9, subtypesList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 4194
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_89
    if-ge v3, v0, :cond_ed

    .line 4195
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4196
    .local v8, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v10, 0x0

    const-string v11, "subtype"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4197
    const/4 v10, 0x0

    const-string v11, "icon"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4198
    const/4 v10, 0x0

    const-string v11, "label"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4199
    const/4 v10, 0x0

    const-string v11, "imeSubtypeLocale"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4200
    const/4 v10, 0x0

    const-string v11, "imeSubtypeMode"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4201
    const/4 v10, 0x0

    const-string v11, "imeSubtypeExtraValue"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4202
    const/4 v11, 0x0

    const-string v12, "isAuxiliary"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v10

    if-eqz v10, :cond_eb

    const/4 v10, 0x1

    :goto_db
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v11, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4204
    const/4 v10, 0x0

    const-string v11, "subtype"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4194
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 4202
    :cond_eb
    const/4 v10, 0x0

    goto :goto_db

    .line 4206
    .end local v8           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_ed
    const/4 v10, 0x0

    const-string v11, "imi"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_35

    .line 4208
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #imiId:Ljava/lang/String;
    .end local v9           #subtypesList:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_f5
    const/4 v10, 0x0

    const-string v11, "subtypes"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4209
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4210
    invoke-virtual {p1, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_101} :catch_62

    goto/16 :goto_6f
.end method


# virtual methods
.method public addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 11
    .parameter "imi"
    .parameter "additionalSubtypes"

    .prologue
    .line 4151
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 4152
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4153
    .local v3, subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v0, p2

    .line 4154
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 4155
    aget-object v2, p2, v1

    .line 4156
    .local v2, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 4157
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4154
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4160
    .end local v2           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1a
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4161
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mSubtypesMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Lcom/android/internal/os/AtomicFile;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    invoke-static {v4, v6, v7}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Lcom/android/internal/os/AtomicFile;Ljava/util/HashMap;)V

    .line 4163
    monitor-exit v5

    .line 4164
    return-void

    .line 4163
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_2e
    move-exception v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v4
.end method

.method public getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4167
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4168
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mSubtypesMap:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 4169
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
