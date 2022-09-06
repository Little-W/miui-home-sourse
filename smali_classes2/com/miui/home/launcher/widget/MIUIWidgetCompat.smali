.class public Lcom/miui/home/launcher/widget/MIUIWidgetCompat;
.super Ljava/lang/Object;
.source "MIUIWidgetCompat.java"


# static fields
.field private static MAML_CONFIG_BACKUP_ENTRY_MAX_ID:Ljava/lang/String;

.field private static MAML_CONFIG_BACKUP_ENTRY_NAME:Ljava/lang/String;

.field public static MAML_CONFIG_BACKUP_EXT:Ljava/lang/String;

.field private static MAML_RES_BACKUP_ENTRY_NAME:Ljava/lang/String;

.field private static MAML_RES_BACKUP_ENTRY_VER:Ljava/lang/String;

.field public static MAML_RES_BACKUP_EXT:Ljava/lang/String;

.field public static WIDGET_PREVIEW_EXT:Ljava/lang/String;

.field public static final sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

.field private static final sIdFactor:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "miui_maml_id_factor"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sIdFactor:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sUid:I

    .line 86
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/miui/home/launcher/AssistantWidgetCompatGlobal;

    invoke-direct {v0}, Lcom/miui/home/launcher/AssistantWidgetCompatGlobal;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/AssistantWidgetCompatCN;

    invoke-direct {v0}, Lcom/miui/home/launcher/AssistantWidgetCompatCN;-><init>()V

    :goto_0
    sput-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    const-string v0, ".maml.cfg"

    .line 166
    sput-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_CONFIG_BACKUP_EXT:Ljava/lang/String;

    const-string v0, "name"

    .line 167
    sput-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_CONFIG_BACKUP_ENTRY_NAME:Ljava/lang/String;

    const-string v0, "maxId"

    .line 168
    sput-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_CONFIG_BACKUP_ENTRY_MAX_ID:Ljava/lang/String;

    const-string v0, ".maml.zip"

    .line 195
    sput-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_RES_BACKUP_EXT:Ljava/lang/String;

    const-string v0, "name"

    .line 196
    sput-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_RES_BACKUP_ENTRY_NAME:Ljava/lang/String;

    const-string v0, "ver"

    .line 197
    sput-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_RES_BACKUP_ENTRY_VER:Ljava/lang/String;

    const-string v0, ".widget.preview"

    .line 227
    sput-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->WIDGET_PREVIEW_EXT:Ljava/lang/String;

    return-void
.end method

.method public static allocMaMlWidgetId()I
    .locals 4

    .line 90
    sget v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sUid:I

    mul-int/lit16 v0, v0, 0x2710

    sget-object v1, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sIdFactor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "miui_maml_id_factor"

    sget-object v3, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sIdFactor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return v0
.end method

.method private static backupMaMlConfigs(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "/maml/config/"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f6

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 179
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 180
    sget-object v4, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_CONFIG_BACKUP_ENTRY_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    sget-object v4, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_CONFIG_BACKUP_ENTRY_MAX_ID:Ljava/lang/String;

    sget-object v5, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sIdFactor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/16 v5, 0xb

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_CONFIG_BACKUP_EXT:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-static {v2, v3}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->createFileInfoBundle(Ljava/io/File;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "WidgetMoveCompat"

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupMaMlConfigs :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 187
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private static backupMaMlResources(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getResDir()Ljava/io/File;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 202
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v5, v3

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 206
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 208
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1f6

    invoke-static {v9, v10}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 209
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 210
    sget-object v10, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_RES_BACKUP_ENTRY_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    sget-object v10, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_RES_BACKUP_ENTRY_VER:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    const/16 v10, 0xb

    invoke-static {v9, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_RES_BACKUP_EXT:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-static {v8, v7}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->createFileInfoBundle(Ljava/io/File;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "WidgetMoveCompat"

    .line 216
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "backupMaMlResources :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const-string v4, "WidgetMoveCompat"

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupMaMlResources err :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static backupMaMls(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-static {p0, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->backupMaMlResources(Landroid/content/Context;Ljava/util/List;)V

    .line 249
    invoke-static {p0, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->backupMaMlConfigs(Landroid/content/Context;Ljava/util/List;)V

    .line 250
    invoke-static {p0, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->backupWidgetPreviews(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method private static backupWidgetPreviews(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 229
    invoke-static {p0}, Lcom/miui/home/launcher/util/BitmapUtil;->getBitmapSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 230
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 233
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f6

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->WIDGET_PREVIEW_EXT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->createFileInfoBundle(Ljava/io/File;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "WidgetMoveCompat"

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backupWidgetPreview :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "WidgetMoveCompat"

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backupWidgetPreview err :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static checkParams(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 789
    :cond_0
    instance-of v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    if-eqz v1, :cond_1

    .line 790
    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 791
    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "WidgetMoveCompat"

    const-string v1, "resPatch & maMlDownloadUrl should not be null"

    .line 792
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static copyExternalFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 566
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "r"

    .line 567
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 569
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 570
    :try_start_1
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x2000

    .line 572
    :try_start_2
    new-array p2, p2, [B

    .line 573
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 574
    invoke-virtual {p0, p2, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 580
    invoke-static {p1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 581
    invoke-static {p0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p0, v1

    :goto_1
    move-object v1, p1

    goto :goto_4

    :catch_1
    move-exception p2

    move-object p0, v1

    :goto_2
    move-object v1, p1

    goto :goto_3

    :catchall_2
    move-exception p2

    move-object p0, v1

    goto :goto_4

    :catch_2
    move-exception p2

    move-object p0, v1

    .line 578
    :goto_3
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 580
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 581
    invoke-static {p0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return v0

    :catchall_3
    move-exception p2

    .line 580
    :goto_4
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 581
    invoke-static {p0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 582
    throw p2
.end method

.method public static copyRes(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 452
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v0, p1, v1, v2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromExternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 453
    invoke-static {p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResPath(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createConfigPath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "/maml/config/"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createEditUri(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;
    .locals 7

    .line 96
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantAssistantPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 98
    iget-object v0, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {p0, v0, v2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantPaResPermission(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p0

    .line 99
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    .line 100
    iget-object v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    const-string v6, "home"

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/miui/maml/widget/edit/MamlutilKt;->createLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createItemInfo(Lcom/miui/home/launcher/Launcher;Landroid/os/Bundle;)Lcom/miui/home/launcher/MIUIWidgetBasicInfo;
    .locals 12

    const-string v0, "widget_id"

    const/4 v1, -0x1

    .line 671
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "widget_origin_id"

    .line 672
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "widget_download_uri"

    .line 673
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "widget_span_x"

    .line 674
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "widget_span_y"

    .line 675
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "widget_type"

    .line 677
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v6, v9, :cond_2

    const-string v6, "widget_info"

    .line 679
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v6, :cond_1

    .line 681
    invoke-static {p0, v6}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 682
    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->setAppWidgetId(I)V

    .line 683
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v3

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 684
    iput v5, v1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    .line 685
    iput v4, v1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    :cond_0
    const-string v3, "widgetExtraData"

    .line 687
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->widgetExtras:Landroid/os/Bundle;

    goto :goto_0

    .line 690
    :cond_1
    new-instance v6, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-direct {v6, v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 691
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "widget_app_package"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "widget_info_name"

    .line 692
    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {v6, v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setProvider(Landroid/content/ComponentName;)V

    const-string v1, "widget_app_icon_preview_url"

    .line 694
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    const-string v1, "widget_title"

    .line 695
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->setLabel(Ljava/lang/CharSequence;)V

    .line 696
    iput-object v3, v6, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadUri:Ljava/lang/String;

    const-string v1, "preview_light_url"

    .line 697
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlLight:Ljava/lang/String;

    const-string v1, "preview_dark_url"

    .line 698
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->previewUrlDark:Ljava/lang/String;

    .line 699
    iput v5, v6, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 700
    iput v4, v6, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->spanX:I

    const-string v1, "widgetExtraData"

    .line 701
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v6, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->widgetExtras:Landroid/os/Bundle;

    const-string v1, "widget_download_app_info"

    .line 702
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->downloadAppInfo:Ljava/lang/String;

    move-object v1, v6

    :goto_0
    const-string v3, "widget_app_version"

    .line 705
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    const-string v3, "widget_app_name"

    .line 706
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    const-string v3, "widget_title"

    .line 707
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 708
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 709
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->setLabel(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_2
    const/4 v1, 0x2

    if-ne v6, v1, :cond_7

    .line 712
    new-instance v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {v1, v4, v5}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>(II)V

    .line 713
    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->allocMaMlWidgetId()I

    move-result v4

    iput v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    const-string v4, "maml_product_id"

    .line 714
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const-string v4, "maml_tag_category"

    .line 715
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTagCategory:Ljava/lang/String;

    const-string v4, "maml_tag"

    .line 716
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlTag:Ljava/lang/String;

    const-string v4, "maml_type"

    .line 717
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->type:Ljava/lang/String;

    const-string v4, "widget_app_name"

    .line 719
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appName:Ljava/lang/String;

    const-string v4, "widget_app_package"

    .line 720
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appPackage:Ljava/lang/String;

    const-string v4, "widget_app_version"

    .line 721
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appVersion:I

    .line 722
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->refreshAppNameFromPackageManager(Landroid/content/Context;)V

    const-string v4, "widget_app_icon_preview_url"

    .line 723
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->appIconPreUrl:Ljava/lang/String;

    .line 724
    iput-object v3, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->downloadUri:Ljava/lang/String;

    const-string v3, "maml_download_url"

    .line 725
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->maMlDownloadUrl:Ljava/lang/String;

    const-string v3, "preview_light_url"

    .line 726
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlLight:Ljava/lang/String;

    const-string v3, "preview_dark_url"

    .line 727
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->previewUrlDark:Ljava/lang/String;

    const-string v3, "maml_mtz_file_size"

    .line 728
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    const-string v3, "maml_title"

    .line 729
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "maml_version"

    .line 730
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    const-string v3, "maml_uri"

    .line 732
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 733
    iput v8, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->status:I

    if-eqz v3, :cond_6

    .line 736
    invoke-static {v1, v3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->copyRes(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    .line 737
    iget-object v3, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 738
    iput v9, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->status:I

    const-string v3, "maml_config_uri"

    .line 740
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v4, "maml_editable"

    .line 741
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    const-string v4, "maml_custom_edit_uri"

    .line 742
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    .line 743
    iget-boolean v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    if-eqz v3, :cond_3

    move v5, v9

    goto :goto_1

    :cond_3
    move v5, v8

    :goto_1
    or-int/2addr v4, v5

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v8

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v9

    :goto_3
    iput-boolean v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    if-eqz v3, :cond_8

    .line 748
    iget v4, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-static {v4, v3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->moveConfig(ILandroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    goto :goto_4

    .line 753
    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->updateMaMlInfo(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    goto :goto_4

    :cond_7
    move-object v1, v7

    :cond_8
    :goto_4
    if-eqz v1, :cond_b

    if-gez v2, :cond_9

    move v2, v0

    .line 759
    :cond_9
    iput v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->originWidgetId:I

    .line 760
    iput-boolean v9, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    const-string v2, "preview_content"

    .line 761
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->transitionBitmap:Landroid/graphics/Bitmap;

    const-string v2, "widget_show_warning_toast"

    .line 762
    invoke-virtual {p1, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetNumberWarningToast:Z

    const-string v2, "widget_warning_toast"

    const-string v3, ""

    .line 763
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->warningToastForWidgetNumber:Ljava/lang/String;

    const-string v2, "widget_show_add_toast"

    .line 764
    invoke-virtual {p1, v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->showWidgetAddedToast:Z

    const-string v2, "widget_added_toast"

    const-string v3, ""

    .line 765
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->resultToastForWidgetAdd:Ljava/lang/String;

    const-string v2, "widget_can_drag_from_home_to_pa"

    .line 766
    invoke-virtual {p1, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->canDragFromHomeToPA:Z

    const-string v2, "default_source"

    .line 767
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->setDefaultSource(I)V

    const-string v2, "add_source"

    .line 768
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    const-string v2, "picker_tip_source"

    .line 769
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerTipSource:I

    const-string v2, "picker_id"

    .line 770
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->pickerID:Ljava/lang/String;

    const-string v2, "widget_package_version_name"

    .line 771
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersionName:Ljava/lang/String;

    .line 774
    iget-object p1, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->transitionBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_a

    iget p1, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->status:I

    if-eq p1, v9, :cond_a

    .line 775
    new-instance p1, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$nayfoNGdQQhMuqHYcd-EPnEmjB8;

    invoke-direct {p1, v1, p0}, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$nayfoNGdQQhMuqHYcd-EPnEmjB8;-><init>(Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 779
    :cond_a
    new-instance p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    invoke-direct {p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;-><init>()V

    iput-object p0, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    .line 780
    iget-object p0, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    iput v9, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->direction:I

    .line 781
    iget-object p0, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->movement:Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;

    iput v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo$WidgetMovement;->paWidgetId:I

    .line 783
    :cond_b
    invoke-static {v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->checkParams(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_5

    :cond_c
    move-object v1, v7

    :goto_5
    return-object v1
.end method

.method public static createMaMlType(II)Ljava/lang/String;
    .locals 1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deleteFiles(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Z)V
    .locals 2

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    if-eqz p1, :cond_1

    .line 637
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->uninstallMaMl(Landroid/content/Context;Ljava/lang/String;I)V

    .line 638
    new-instance p1, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$r5warsF5YIaRIeyL9jHWUVFnP_4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$r5warsF5YIaRIeyL9jHWUVFnP_4;-><init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 641
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static deleteMaMls(Landroid/content/Context;)V
    .locals 2

    .line 255
    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getResDir()Ljava/io/File;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->deleteFile(Ljava/io/File;)V

    .line 260
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getConfigDir()Ljava/io/File;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->deleteFile(Ljava/io/File;)V

    .line 265
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/util/BitmapUtil;->getBitmapSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 266
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 268
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->deleteFile(Ljava/io/File;)V

    :cond_2
    return-void
.end method

.method private static findNativeMaMlWidget(Ljava/util/List;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/maml/widget/edit/MamlWidget;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;",
            "Lcom/miui/home/launcher/maml/MaMlWidgetInfo;",
            ")",
            "Lcom/miui/maml/widget/edit/MamlWidget;"
        }
    .end annotation

    .line 536
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/widget/edit/MamlWidget;

    .line 537
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlWidget;->getXy()Landroid/util/Pair;

    move-result-object v1

    .line 538
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    if-ne v1, v2, :cond_0

    const-string p0, "WidgetMoveCompat"

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResPath : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlWidget;->getResPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getConfigDir()Ljava/io/File;
    .locals 3

    .line 135
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "/maml/config/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getLegacyResDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 599
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "/maml/res/"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 600
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getLegacyResDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 593
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "/maml/res/"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 595
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaMlDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 3

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getResDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getMaMlResDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 4

    .line 162
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getResDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMaMlResPath(Ljava/lang/String;IZ)Ljava/io/File;
    .locals 3

    .line 339
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 341
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    if-nez p2, :cond_2

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 346
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getLegacyResDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getMaMlResPath(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 460
    :try_start_0
    sget-object v1, Lcom/miui/maml/widget/edit/ParseMamlResource;->INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource;

    .line 461
    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v3, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v2, v3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 462
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    iget p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    invoke-virtual {v1, v3, v2, p0}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget(Ljava/io/File;II)Ljava/util/List;

    move-result-object p0

    .line 463
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "WidgetMoveCompat"

    const-string v1, "fail to find maml widgets in res path"

    .line 464
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 467
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/widget/edit/MamlWidget;

    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlWidget;->getResPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "WidgetMoveCompat"

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaMlResPath err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static getNativeMaMlWidgets(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    .line 548
    :try_start_0
    sget-object v0, Lcom/miui/maml/widget/edit/ParseMamlResource;->INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource;

    .line 549
    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 550
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget(Ljava/io/File;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "WidgetMoveCompat"

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNativeMaMlWidgets res path err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getResDir()Ljava/io/File;
    .locals 3

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "/maml/res/0/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getResZipPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 604
    invoke-static {p1, p2, v0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResPath(Ljava/lang/String;IZ)Ljava/io/File;

    move-result-object p2

    .line 605
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 608
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getLegacyResDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".zip"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static grantAssistantPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 1

    .line 616
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "com.miui.home.fileprovider"

    .line 617
    invoke-static {p0, p1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 618
    sget-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    invoke-interface {v0}, Lcom/miui/home/launcher/AssistantWidget;->getPkgName()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-object p1
.end method

.method public static grantPaResPermission(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 0

    .line 612
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getResZipPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->grantAssistantPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized installMaMlFromExternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Z
    .locals 6

    const-class v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;

    monitor-enter v0

    const/4 v1, 0x1

    .line 386
    :try_start_0
    invoke-static {p2, p3, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResPath(Ljava/lang/String;IZ)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 390
    invoke-static {p0, p1, v2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->copyExternalFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "WidgetMoveCompat"

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installMaMlFromExternal fail for :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 396
    sget-object p1, Lcom/miui/maml/widget/edit/ParseMamlResource;->INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource;

    .line 397
    invoke-static {p2, p3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/miui/maml/widget/edit/MamlutilKt;->findLocalMamlInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 398
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz p0, :cond_1

    goto :goto_0

    .line 408
    :cond_1
    monitor-exit v0

    return v1

    .line 400
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 401
    invoke-static {p2, p3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 399
    invoke-virtual {p1, p2, p0, v3, p3}, Lcom/miui/maml/widget/edit/ParseMamlResource;->importMamlResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 403
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    const-string p1, "WidgetMoveCompat"

    .line 405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unzipped maml res path :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/2addr p0, v1

    monitor-exit v0

    return p0

    :catch_0
    move-exception p0

    .line 412
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 413
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    const-string p1, "WidgetMoveCompat"

    .line 415
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "installMaMlFromExternal err : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    const/4 p0, 0x0

    .line 417
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized installMaMlFromThemeApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4

    const-class v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;

    monitor-enter v0

    const/4 v1, 0x0

    .line 366
    :try_start_0
    invoke-static {p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-static {p0, p1, v2}, Lcom/miui/maml/widget/edit/MamlutilKt;->copyMamlResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 368
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 369
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/widget/edit/MamlWidget;

    .line 370
    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlWidget;->getInfo()Lcom/miui/maml/widget/edit/MamlResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/widget/edit/MamlResource;->getVersionCode()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "WidgetMoveCompat"

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installMaMlFromThemeApp productId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " err:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :cond_1
    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method static synthetic lambda$createItemInfo$1(Lcom/miui/home/launcher/MIUIWidgetBasicInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->transitionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getUniqueTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/miui/home/launcher/util/BitmapUtil;->saveBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic lambda$deleteFiles$0(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 1

    .line 638
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getUniqueTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/util/BitmapUtil;->deleteSavedBitmapFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static move(II)V
    .locals 6

    .line 646
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 647
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "miuiIdChanged"

    const/4 v3, 0x1

    .line 648
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "miuiOldIds"

    .line 649
    new-array v4, v3, [I

    const/4 v5, 0x0

    aput p0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p0, "miuiNewIds"

    .line 650
    new-array v2, v3, [I

    aput p1, v2, v5

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 651
    invoke-virtual {v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static moveComplete(I)Z
    .locals 3

    .line 655
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 656
    invoke-virtual {v0, p0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "miuiIdChangedComplete"

    .line 657
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "miuiIdChangedComplete"

    .line 660
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "miuiIdChanged"

    .line 661
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "miuiNewIds"

    .line 662
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "miuiOldIds"

    .line 663
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, p0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static moveConfig(ILandroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createConfigPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->createConfigPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 120
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->copyExternalFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static restoreMaMls(Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 273
    invoke-static {p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->deleteMaMls(Landroid/content/Context;)V

    .line 274
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/maml/config/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/miui/home/launcher/util/BitmapUtil;->getBitmapSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 278
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 279
    sget-object v6, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_RES_BACKUP_EXT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0xb

    if-eqz v6, :cond_1

    .line 281
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v8, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_RES_BACKUP_EXT:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 282
    new-instance v6, Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    const-string v7, "UTF-8"

    .line 284
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 285
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    sget-object v6, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_RES_BACKUP_ENTRY_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    sget-object v7, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_RES_BACKUP_ENTRY_VER:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 288
    invoke-static {p0, v4, v6, v5}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromExternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WidgetMoveCompat"

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "WidgetMoveCompat"

    .line 292
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore maml res file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " err:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    :cond_1
    sget-object v6, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_CONFIG_BACKUP_EXT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 295
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v8, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_CONFIG_BACKUP_EXT:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 297
    :try_start_1
    new-instance v6, Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    const-string v7, "UTF-8"

    .line 299
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 300
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 301
    sget-object v6, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_CONFIG_BACKUP_ENTRY_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 302
    sget-object v7, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->MAML_CONFIG_BACKUP_ENTRY_MAX_ID:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 303
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 305
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 306
    invoke-static {p0, v4, v5}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    .line 307
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1ed

    invoke-static {v6, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    const-string v6, "WidgetMoveCompat"

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    const-string v6, "WidgetMoveCompat"

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore maml config file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " err:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 312
    :cond_2
    sget-object v6, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->WIDGET_PREVIEW_EXT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 313
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sget-object v7, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->WIDGET_PREVIEW_EXT:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 314
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 317
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 319
    :cond_3
    invoke-static {p0, v4, v6}, Lcom/miui/home/launcher/cloudbackup/BackupRestoreHomeService;->copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;)V

    const-string v6, "WidgetMoveCompat"

    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v5

    const-string v6, "WidgetMoveCompat"

    .line 322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore widget preview file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " err:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 327
    :cond_4
    sget-object p0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sIdFactor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 328
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string p1, "miui_maml_id_factor"

    sget-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sIdFactor:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static uninstallLegacyMaMl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/maml/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->deleteFile(Ljava/io/File;)V

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/maml/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 430
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 432
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->deleteFile(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method public static uninstallMaMl(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 437
    invoke-static {p0, p1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->uninstallLegacyMaMl(Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    invoke-static {p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 441
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 442
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->deleteFile(Ljava/io/File;)V

    .line 443
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 444
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 445
    array-length p1, p1

    if-nez p1, :cond_1

    .line 446
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->deleteFile(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method private static updateMaMlInfo(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/maml/widget/edit/MamlWidget;)V
    .locals 1

    .line 529
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/MamlWidget;->getResPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    .line 530
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/MamlWidget;->getEditable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->isEditable:Z

    .line 531
    invoke-virtual {p1}, Lcom/miui/maml/widget/edit/MamlWidget;->getCustomEditLink()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->customEditUri:Ljava/lang/String;

    const/4 p1, 0x1

    .line 532
    iput p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->status:I

    return-void
.end method

.method public static updateMaMlInfo(Landroid/content/Context;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 5

    const/4 v0, 0x0

    .line 505
    :try_start_0
    sget-object v1, Lcom/miui/maml/widget/edit/ParseMamlResource;->INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource;

    .line 506
    iget-object v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v3, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-static {v2, v3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 507
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    iget v4, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    invoke-virtual {v1, v3, v2, v4}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget(Ljava/io/File;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 508
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 512
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/widget/edit/MamlWidget;

    .line 514
    iget-object v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    iget v2, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    .line 515
    :goto_0
    invoke-static {p1, v1}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->updateMaMlInfo(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/maml/widget/edit/MamlWidget;)V

    .line 517
    iget v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    if-ge v2, v1, :cond_2

    .line 518
    iget v1, p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    invoke-virtual {p1, v2, v1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->onUpgrade(II)V

    .line 519
    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getUniqueTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/util/BitmapUtil;->deleteSavedBitmapFile(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const-string p0, "WidgetMoveCompat"

    const-string p1, "fail to find maml widgets in res path"

    .line 509
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string p1, "WidgetMoveCompat"

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResPath res path err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static updateMaMlInfo(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/maml/MaMlWidgetInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .line 476
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 478
    :cond_0
    invoke-static {p2, p3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getNativeMaMlWidgets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 479
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 483
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    .line 484
    iget-object v4, v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 485
    invoke-virtual {v3}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getUniqueTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/miui/home/launcher/util/BitmapUtil;->deleteSavedBitmapFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 487
    :cond_3
    iget-object v4, v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->resPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    iget v4, v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    :goto_1
    if-ge v4, p3, :cond_2

    .line 489
    invoke-static {v0, v3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->findNativeMaMlWidget(Ljava/util/List;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Lcom/miui/maml/widget/edit/MamlWidget;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 491
    iput p3, v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    .line 492
    invoke-static {v3, v5}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->updateMaMlInfo(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/maml/widget/edit/MamlWidget;)V

    .line 493
    invoke-virtual {v3, v4, p3}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->onUpgrade(II)V

    const-string v4, "WidgetMoveCompat"

    .line 494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upgraded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " productId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v4, "WidgetMoveCompat"

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upgrade maml failure = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " productId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->gadgetId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v2
.end method
