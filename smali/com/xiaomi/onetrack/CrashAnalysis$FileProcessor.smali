.class Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/CrashAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileProcessor"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/onetrack/CrashAnalysis;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->d:Lcom/xiaomi/onetrack/CrashAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a:Ljava/util/List;

    .line 338
    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->c:Ljava/lang/String;

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".xcrash"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__"

    .line 359
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 360
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 361
    aget-object p1, p1, v0

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 362
    array-length v0, p1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 363
    aget-object p1, p1, v1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method a()V
    .locals 9

    const/4 v0, 0x0

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 373
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-direct {p0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v2, 0x19000

    .line 375
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 378
    iget-object v2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/CrashAnalysis;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "CrashAnalysis"

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileName: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CrashAnalysis"

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "feature id: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CrashAnalysis"

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->d:Lcom/xiaomi/onetrack/CrashAnalysis;

    invoke-static {v2}, Lcom/xiaomi/onetrack/CrashAnalysis;->c(Lcom/xiaomi/onetrack/CrashAnalysis;)Lcom/xiaomi/onetrack/a/f;

    move-result-object v2

    iget-object v5, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->c:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/onetrack/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/io/File;)V

    const-string v1, "CrashAnalysis"

    const-string v2, "remove reported crash file"

    .line 384
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method a(Ljava/io/File;)Z
    .locals 2

    .line 343
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
