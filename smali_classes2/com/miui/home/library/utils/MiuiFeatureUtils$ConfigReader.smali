.class Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;
.super Ljava/lang/Object;
.source "MiuiFeatureUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/MiuiFeatureUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigReader"
.end annotation


# instance fields
.field private mConfigResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentGroupName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    .line 167
    iput-object v0, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    .line 171
    iput-object p1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    return-void
.end method

.method private findEqualSignPos(Ljava/lang/String;)I
    .locals 1

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private matchGroup(Ljava/lang/String;)Z
    .locals 2

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "["

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private parseInternal()Z
    .locals 6

    const/4 v0, 0x0

    .line 187
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 190
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0, v0}, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->parseLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 200
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    const-string v2, "MiuiFeatureUtils"

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse feature file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 200
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_1
    const/4 v0, 0x0

    :catch_3
    :goto_2
    return v0

    :goto_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 205
    :catch_4
    :cond_2
    throw v1
.end method

.method private parseLine(Ljava/lang/String;)V
    .locals 6

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-direct {p0, p1}, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->removeComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 214
    invoke-direct {p0, p1}, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->matchGroup(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentGroupName:Ljava/lang/String;

    .line 216
    iget-object p1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentGroupName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    iput-object v1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    return-void

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    if-nez p1, :cond_1

    .line 222
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    .line 226
    iget-object p1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    if-nez p1, :cond_8

    .line 227
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    .line 228
    iget-object p1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentGroupName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    .line 231
    invoke-direct {p0, p1}, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->findEqualSignPos(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_7

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 237
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/2addr v0, v2

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "yes"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "no"

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 241
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 244
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_6
    :goto_0
    if-eqz v1, :cond_8

    .line 248
    iget-object p1, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mCurrentConfig:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method private removeComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "#"

    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 272
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getConfigResult()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mConfigResult:Ljava/util/HashMap;

    return-object v0
.end method

.method public parse()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/library/utils/MiuiFeatureUtils$ConfigReader;->parseInternal()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
