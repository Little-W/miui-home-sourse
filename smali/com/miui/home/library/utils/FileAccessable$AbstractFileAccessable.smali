.class public abstract Lcom/miui/home/library/utils/FileAccessable$AbstractFileAccessable;
.super Ljava/lang/Object;
.source "FileAccessable.java"

# interfaces
.implements Lcom/miui/home/library/utils/FileAccessable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFileAccessable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDirectory()Z
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/miui/home/library/utils/FileAccessable$AbstractFileAccessable;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/library/utils/FileAccessable$AbstractFileAccessable;->isFile()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
