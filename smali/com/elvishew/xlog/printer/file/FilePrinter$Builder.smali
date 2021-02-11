.class public Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;
.super Ljava/lang/Object;
.source "FilePrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elvishew/xlog/printer/file/FilePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field backupStrategy:Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;

.field cleanStrategy:Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;

.field fileNameGenerator:Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;

.field flattener:Lcom/elvishew/xlog/flattener/Flattener2;

.field folderPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->folderPath:Ljava/lang/String;

    return-void
.end method

.method private fillEmptyFields()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator:Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;

    if-nez v0, :cond_0

    .line 284
    invoke-static {}, Lcom/elvishew/xlog/internal/DefaultsFactory;->createFileNameGenerator()Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator:Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy:Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;

    if-nez v0, :cond_1

    .line 287
    invoke-static {}, Lcom/elvishew/xlog/internal/DefaultsFactory;->createBackupStrategy()Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy:Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy:Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;

    if-nez v0, :cond_2

    .line 290
    invoke-static {}, Lcom/elvishew/xlog/internal/DefaultsFactory;->createCleanStrategy()Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy:Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener:Lcom/elvishew/xlog/flattener/Flattener2;

    if-nez v0, :cond_3

    .line 293
    invoke-static {}, Lcom/elvishew/xlog/internal/DefaultsFactory;->createFlattener2()Lcom/elvishew/xlog/flattener/Flattener2;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener:Lcom/elvishew/xlog/flattener/Flattener2;

    :cond_3
    return-void
.end method


# virtual methods
.method public backupStrategy(Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->backupStrategy:Lcom/elvishew/xlog/printer/file/backup/BackupStrategy;

    return-object p0
.end method

.method public build()Lcom/elvishew/xlog/printer/file/FilePrinter;
    .locals 1

    .line 278
    invoke-direct {p0}, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fillEmptyFields()V

    .line 279
    new-instance v0, Lcom/elvishew/xlog/printer/file/FilePrinter;

    invoke-direct {v0, p0}, Lcom/elvishew/xlog/printer/file/FilePrinter;-><init>(Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;)V

    return-object v0
.end method

.method public cleanStrategy(Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->cleanStrategy:Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;

    return-object p0
.end method

.method public fileNameGenerator(Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->fileNameGenerator:Lcom/elvishew/xlog/printer/file/naming/FileNameGenerator;

    return-object p0
.end method

.method public flattener(Lcom/elvishew/xlog/flattener/Flattener2;)Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$Builder;->flattener:Lcom/elvishew/xlog/flattener/Flattener2;

    return-object p0
.end method
