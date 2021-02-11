.class Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;
.super Ljava/lang/Object;
.source "DownloadInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/DownloadInstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadManagerInfo"
.end annotation


# instance fields
.field public currBytes:I

.field public downloadFilePath:Ljava/lang/String;

.field public id:J

.field public reason:I

.field public status:I

.field public totalBytes:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(J)Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;
    .locals 3

    .line 379
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    .line 380
    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const/4 p0, 0x0

    .line 383
    :try_start_0
    invoke-static {}, Lcom/market/sdk/DownloadInstallManager;->access$400()Landroid/app/DownloadManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 390
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    invoke-static {p1}, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;->query(Landroid/database/Cursor;)Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 395
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_1
    throw p0

    :cond_2
    if-eqz p1, :cond_3

    .line 395
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0

    :catch_0
    move-exception p1

    const-string v0, "MarketUpdateDownload"

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query download from DownloadManager failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/market/sdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static query(Landroid/database/Cursor;)Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "_id"

    .line 403
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v1, "status"

    .line 404
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "reason"

    .line 405
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "bytes_so_far"

    .line 406
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "total_size"

    .line 407
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 409
    invoke-static {}, Lcom/market/sdk/utils/Client;->isLaterThanHoneycomb()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "local_filename"

    goto :goto_0

    :cond_0
    const-string v5, "file_path"

    .line 414
    :goto_0
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 416
    new-instance v6, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;

    invoke-direct {v6}, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;-><init>()V

    .line 417
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;->id:J

    .line 418
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;->status:I

    .line 419
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;->reason:I

    .line 420
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;->currBytes:I

    .line 421
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;->totalBytes:I

    .line 422
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Lcom/market/sdk/DownloadInstallManager$DownloadManagerInfo;->downloadFilePath:Ljava/lang/String;

    return-object v6
.end method
