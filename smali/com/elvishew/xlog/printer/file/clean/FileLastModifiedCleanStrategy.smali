.class public Lcom/elvishew/xlog/printer/file/clean/FileLastModifiedCleanStrategy;
.super Ljava/lang/Object;
.source "FileLastModifiedCleanStrategy.java"

# interfaces
.implements Lcom/elvishew/xlog/printer/file/clean/CleanStrategy;


# instance fields
.field private maxTimeMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/elvishew/xlog/printer/file/clean/FileLastModifiedCleanStrategy;->maxTimeMillis:J

    return-void
.end method


# virtual methods
.method public shouldClean(Ljava/io/File;)Z
    .locals 4

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 25
    iget-wide v2, p0, Lcom/elvishew/xlog/printer/file/clean/FileLastModifiedCleanStrategy;->maxTimeMillis:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
