.class public final Lcom/miui/maml/widget/edit/ParseMamlResource;
.super Ljava/lang/Object;
.source "ParseMamlResource.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/miui/maml/widget/edit/ParseMamlResource;

    invoke-direct {v0}, Lcom/miui/maml/widget/edit/ParseMamlResource;-><init>()V

    sput-object v0, Lcom/miui/maml/widget/edit/ParseMamlResource;->INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic generateMamlWidget$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/io/File;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, -0x1

    if-eqz p7, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 157
    move-object p5, p2

    check-cast p5, Ljava/lang/String;

    :cond_3
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget(Ljava/io/File;IIILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic importMamlResource$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;ILjava/lang/Object;)Ljava/lang/String;
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 37
    move-object p3, v0

    check-cast p3, Ljava/lang/Runnable;

    :cond_0
    move-object v4, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 38
    move-object p4, v0

    check-cast p4, Ljava/lang/String;

    :cond_1
    move-object v5, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 39
    invoke-static {}, Lcom/miui/maml/widget/edit/MamlutilKt;->getGSON_DEFAULT()Lcom/google/gson/Gson;

    move-result-object p5

    :cond_2
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/maml/widget/edit/ParseMamlResource;->importMamlResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final parseCustomLinkFromResPath(Ljava/lang/String;)Lcom/miui/maml/widget/edit/CustomEditLinkConfig;
    .locals 6

    const/4 p0, 0x0

    .line 233
    move-object v0, p0

    check-cast v0, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    .line 234
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 235
    check-cast v1, Ljava/io/Closeable;

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/util/zip/ZipFile;

    const-string v3, "var_config.xml"

    .line 236
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 238
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    check-cast p0, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/io/InputStream;

    const-string v4, "it"

    .line 239
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->parseVarXml(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 240
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 241
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/widget/edit/BaseConfig;

    .line 242
    instance-of v5, v4, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    if-eqz v5, :cond_0

    .line 243
    check-cast v4, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    move-object v0, v4

    .line 248
    :cond_1
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :try_start_2
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 250
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 235
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_2
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic unzip$widget_edit_release$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, ""

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/ParseMamlResource;->unzip$widget_edit_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final generateMamlWidget(Ljava/io/File;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/io/File;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final generateMamlWidget(Ljava/io/File;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/io/File;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final generateMamlWidget(Ljava/io/File;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/io/File;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final generateMamlWidget(Ljava/io/File;III)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "III)",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/miui/maml/widget/edit/ParseMamlResource;->generateMamlWidget$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/io/File;IIILjava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final generateMamlWidget(Ljava/io/File;IIILjava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/MamlWidget;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "mamlWidgetSdk"

    const-string v0, "folder"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/io/File;

    const-string v7, "meta.json"

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 161
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x1

    .line 163
    :try_start_0
    invoke-static {v0, v7, v9, v7}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateMamlWidget read meta json error - "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v8

    .line 168
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/miui/maml/widget/edit/MamlutilKt;->getGSON_DEFAULT()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v11, Lcom/miui/maml/widget/edit/MamlResource;

    invoke-virtual {v0, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/widget/edit/MamlResource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 170
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateMamlWidget fail."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", invalid gson. "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    :goto_1
    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateMamlWidget meta json invalid. in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 178
    :cond_0
    move-object v10, v5

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "Collections.emptyList()"

    const-string v13, " != "

    if-nez v11, :cond_1

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->getTypeTag()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateMamlWidget fail. typeTag not match. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->getTypeTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-lez v4, :cond_2

    .line 183
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->getVersionCode()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateMamlWidget fail. version not match. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->getVersionCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 187
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 188
    sget-object v5, Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$widgetFiles$1;->INSTANCE:Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$widgetFiles$1;

    check-cast v5, Ljava/io/FilenameFilter;

    invoke-virtual {v1, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 189
    array-length v10, v5

    const/16 v18, 0x0

    if-nez v10, :cond_3

    move v10, v9

    goto :goto_2

    :cond_3
    move/from16 v10, v18

    :goto_2
    xor-int/2addr v10, v9

    if-eqz v10, :cond_f

    .line 190
    array-length v15, v5

    move/from16 v14, v18

    :goto_3
    if-ge v14, v15, :cond_e

    aget-object v10, v5, v14

    const-string v11, "oneWidget"

    .line 191
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 192
    new-instance v12, Ljava/io/File;

    const-string v13, "preview"

    invoke-direct {v12, v1, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    new-instance v13, Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$previewWhite$1;

    invoke-direct {v13, v11}, Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$previewWhite$1;-><init>(Ljava/lang/String;)V

    check-cast v13, Ljava/io/FilenameFilter;

    invoke-virtual {v12, v13}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v13

    .line 196
    new-instance v7, Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$previewDark$1;

    invoke-direct {v7, v11}, Lcom/miui/maml/widget/edit/ParseMamlResource$generateMamlWidget$previewDark$1;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/io/FilenameFilter;

    invoke-virtual {v12, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    if-eqz v13, :cond_5

    .line 200
    array-length v12, v13

    if-nez v12, :cond_4

    move v12, v9

    goto :goto_4

    :cond_4
    move/from16 v12, v18

    :goto_4
    xor-int/2addr v12, v9

    if-eqz v12, :cond_5

    aget-object v12, v13, v18

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :goto_5
    if-eqz v7, :cond_7

    .line 202
    array-length v13, v7

    if-nez v13, :cond_6

    move v13, v9

    goto :goto_6

    :cond_6
    move/from16 v13, v18

    :goto_6
    xor-int/2addr v13, v9

    if-eqz v13, :cond_7

    aget-object v7, v7, v18

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    const-string v13, "fileName"

    .line 203
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/miui/maml/widget/edit/MamlutilKt;->firstNumber(Ljava/lang/String;)I

    move-result v13

    .line 204
    invoke-static {v11}, Lcom/miui/maml/widget/edit/MamlutilKt;->lastNumber(Ljava/lang/String;)I

    move-result v11

    if-lez v2, :cond_9

    if-lez v3, :cond_9

    if-ne v13, v2, :cond_8

    if-eq v11, v3, :cond_9

    :cond_8
    move-object/from16 p4, v5

    move/from16 v19, v14

    move v9, v15

    move-object/from16 v5, p0

    goto/16 :goto_b

    .line 209
    :cond_9
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->isCustomEdit()Z

    move-result v16

    const-string v9, "oneWidget.path"

    if-eqz v16, :cond_a

    .line 210
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p4, v5

    move-object/from16 v5, p0

    invoke-direct {v5, v1}, Lcom/miui/maml/widget/edit/ParseMamlResource;->parseCustomLinkFromResPath(Ljava/lang/String;)Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 212
    invoke-virtual {v1}, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;->getLink()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_8

    :cond_a
    move-object/from16 p4, v5

    move-object/from16 v5, p0

    :cond_b
    move-object/from16 v17, v8

    .line 216
    :goto_8
    new-instance v1, Lcom/miui/maml/widget/edit/MamlWidget;

    .line 217
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    const-string v11, "Pair.create(x, y)"

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v12, :cond_c

    .line 218
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_c
    const-string v9, ""

    :goto_9
    const-string v10, "if (white != null) white.path else \"\""

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_d

    .line 219
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_d
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->getEditable()Z

    move-result v16

    move-object v10, v1

    move-object/from16 v19, v11

    move-object v11, v0

    move-object v12, v13

    move-object/from16 v13, v19

    move/from16 v19, v14

    move-object v14, v9

    move v9, v15

    move-object v15, v7

    .line 216
    invoke-direct/range {v10 .. v17}, Lcom/miui/maml/widget/edit/MamlWidget;-><init>(Lcom/miui/maml/widget/edit/MamlResource;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 215
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, p4

    move v15, v9

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_3

    .line 223
    :cond_e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateMamlWidget empty list. maybe xy not match. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_f
    const-string v0, "generateMamlWidget fail. no widget_AxB file"

    .line 227
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_c
    return-object v4
.end method

.method public final importMamlResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/maml/widget/edit/ParseMamlResource;->importMamlResource$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final importMamlResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/miui/maml/widget/edit/ParseMamlResource;->importMamlResource$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final importMamlResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/miui/maml/widget/edit/ParseMamlResource;->importMamlResource$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final importMamlResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Lcom/google/gson/Gson;)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p5

    const-string v1, "gson"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v8

    :goto_1
    const/4 v13, 0x0

    const-string v12, "mamlWidgetSdk"

    if-nez v1, :cond_11

    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v8

    :goto_3
    if-eqz v1, :cond_4

    goto/16 :goto_10

    :cond_4
    if-eqz p4, :cond_7

    .line 45
    move-object/from16 v1, p4

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    move v1, v8

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v11, p4

    goto :goto_6

    .line 46
    :cond_7
    :goto_5
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    :goto_6
    :try_start_0
    const-string v1, "folder"

    .line 52
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v11

    invoke-static/range {v1 .. v6}, Lcom/miui/maml/widget/edit/ParseMamlResource;->unzip$widget_edit_release$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 58
    new-instance v1, Ljava/io/File;

    const-string v2, "description.xml"

    invoke-direct {v1, v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 60
    new-instance v2, Lcom/miui/maml/widget/edit/local/ManifestManager;

    invoke-direct {v2, v1}, Lcom/miui/maml/widget/edit/local/ManifestManager;-><init>(Ljava/io/File;)V

    .line 62
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    const-string v1, "0"

    .line 63
    :goto_7
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getTypeTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_9

    move-object v5, v3

    goto :goto_8

    :cond_9
    move-object v5, v4

    .line 64
    :goto_8
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->isEditable()Z

    move-result v16

    .line 65
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->isCustomEdit()Z

    move-result v17

    .line 66
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getTitles()Ljava/util/Map;

    move-result-object v9

    const-string v3, "manager.titles"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getDescriptions()Ljava/util/Map;

    move-result-object v10

    const-string v3, "manager.descriptions"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getAuthors()Ljava/util/Map;

    move-result-object v6

    const-string v3, "manager.authors"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getDesigners()Ljava/util/Map;

    move-result-object v3

    const-string v7, "manager.designers"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->getWidgetCategory()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    move-object/from16 v19, v7

    goto :goto_9

    :cond_a
    move-object/from16 v19, v4

    .line 71
    :goto_9
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/local/ManifestManager;->isAutoTheme()Z

    move-result v20

    .line 74
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v18, v1

    goto :goto_a

    .line 76
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "description use wrong version format. "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    .line 78
    :goto_a
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v1

    const-string v2, "fallback"

    if-eqz v1, :cond_c

    if-eq v1, v8, :cond_b

    .line 81
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    goto :goto_b

    .line 80
    :cond_b
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_b
    move-object v7, v1

    goto :goto_c

    :cond_c
    move-object v7, v4

    .line 83
    :goto_c
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_e

    if-eq v1, v8, :cond_d

    .line 86
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    goto :goto_d

    .line 85
    :cond_d
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_d
    move-object v8, v1

    goto :goto_e

    :cond_e
    move-object v8, v4

    .line 88
    :goto_e
    new-instance v4, Lcom/miui/maml/widget/edit/MamlResource;

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v0, v3

    move/from16 v3, v18

    move-object v15, v4

    move-object v4, v5

    move-object v5, v7

    move-object/from16 v18, v6

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object/from16 v9, v18

    move-object v10, v0

    move-object/from16 v21, v11

    move/from16 v11, v16

    move-object/from16 v22, v12

    move/from16 v12, v17

    move-object/from16 v13, v19

    move-object v0, v14

    move/from16 v14, v20

    invoke-direct/range {v1 .. v14}, Lcom/miui/maml/widget/edit/MamlResource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZLjava/lang/String;Z)V

    .line 92
    invoke-virtual {v0, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gson.toJson(mr)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "meta.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v1, v4}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write meta json fail. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    move-object/from16 v1, p3

    if-eqz v1, :cond_f

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-object v2

    :cond_10
    move-object v1, v12

    move-object v4, v13

    const-string v0, "importMamlResource fail . no desc"

    .line 105
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :catch_2
    move-exception v0

    move-object v1, v12

    move-object v4, v13

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unzip fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_11
    :goto_10
    move-object v1, v12

    move-object v4, v13

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "importMamlResource fail. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public final unzip$widget_edit_release(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/maml/widget/edit/ParseMamlResource;->unzip$widget_edit_release$default(Lcom/miui/maml/widget/edit/ParseMamlResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final unzip$widget_edit_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "/"

    const-string v4, "../"

    const-string v5, "zipPath"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "targetFolder"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "matchPrefix"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 114
    check-cast v5, Ljava/io/Closeable;

    const/4 v0, 0x0

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    :try_start_0
    move-object v7, v5

    check-cast v7, Ljava/util/zip/ZipFile;

    .line 115
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 116
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 118
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 119
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    const-string v10, "entry"

    .line 120
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    .line 121
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v4

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v11, v12, v14, v13, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v10, v2, v14, v13, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v11, "utf-8"

    .line 124
    invoke-static {v10, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "URLDecoder.decode(name, \"utf-8\")"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/CharSequence;

    move-object v12, v4

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v14, v13, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v9, "mamlWidgetSdk"

    const-string v10, "unzip() suspect to be a hack act when unzip"

    .line 125
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {v1, v3, v14, v13, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, ""

    goto :goto_1

    :cond_2
    move-object v11, v3

    .line 129
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 130
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 132
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 134
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 135
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v10, Ljava/io/Closeable;

    move-object v11, v0

    check-cast v11, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v12, v10

    check-cast v12, Ljava/io/FileOutputStream;

    .line 136
    invoke-virtual {v7, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    check-cast v9, Ljava/io/Closeable;

    move-object v15, v0

    check-cast v15, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v0, v9

    check-cast v0, Ljava/io/InputStream;

    const-string v13, "input"

    .line 137
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/io/OutputStream;

    const/4 v1, 0x0

    const/4 v13, 0x2

    invoke-static {v0, v12, v14, v13, v1}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :try_start_3
    invoke-static {v9, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 135
    :try_start_4
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 136
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 135
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-static {v10, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    :goto_2
    move-object v1, v0

    :goto_3
    move-object v0, v1

    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 142
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 114
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 115
    :cond_6
    :try_start_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.util.Enumeration<java.util.zip.ZipEntry>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 114
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
