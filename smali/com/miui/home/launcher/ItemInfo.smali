.class public Lcom/miui/home/launcher/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"

# interfaces
.implements Lcom/miui/home/launcher/PendingItem;
.implements Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;
.implements Ljava/lang/Cloneable;


# static fields
.field private static sColumnsWithScreenType:[Ljava/lang/String;


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field public id:J

.field public itemFlags:I

.field public itemType:I

.field public mIsRetained:Z

.field protected mLabel:Ljava/lang/CharSequence;

.field private mLastLaunchTime:J

.field private mLaunchCounts:[I

.field private mPendingSource:Lcom/miui/home/launcher/PendingSource;

.field protected mTitle:Ljava/lang/CharSequence;

.field public minSpanX:I

.field public minSpanY:I

.field public screenId:J

.field public spanX:I

.field public spanY:I

.field public user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 57
    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 73
    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 78
    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 88
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 98
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 103
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->minSpanX:I

    .line 108
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->minSpanY:I

    const/16 v0, 0x18

    .line 113
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mLaunchCounts:[I

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemInfo;->mIsRetained:Z

    .line 156
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 57
    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 73
    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 78
    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 88
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 98
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 103
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->minSpanX:I

    .line 108
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->minSpanY:I

    const/16 v0, 0x18

    .line 113
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mLaunchCounts:[I

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemInfo;->mIsRetained:Z

    .line 163
    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 164
    iput p2, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 165
    iput p3, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 166
    iput p4, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 167
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public static getColumnsWithScreenType()[Ljava/lang/String;
    .locals 4

    .line 339
    sget-object v0, Lcom/miui/home/launcher/ItemInfo;->sColumnsWithScreenType:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 340
    sget-object v0, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/miui/home/launcher/ItemInfo;->sColumnsWithScreenType:[Ljava/lang/String;

    .line 341
    sget-object v0, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    sget-object v1, Lcom/miui/home/launcher/ItemInfo;->sColumnsWithScreenType:[Ljava/lang/String;

    sget-object v2, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    sget-object v0, Lcom/miui/home/launcher/ItemInfo;->sColumnsWithScreenType:[Ljava/lang/String;

    sget-object v1, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "screenType"

    aput-object v2, v0, v1

    .line 344
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/ItemInfo;->sColumnsWithScreenType:[Ljava/lang/String;

    return-object v0
.end method

.method public static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 258
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    const-string v0, "icon"

    .line 259
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/miui/home/launcher/ItemInfo;->mLabel:Ljava/lang/CharSequence;

    .line 472
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isDisabled()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isDisabled()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canAcceptByHotSeats()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canBeDeleted(Landroid/content/Context;)Z
    .locals 0

    .line 429
    iget-boolean p1, p0, Lcom/miui/home/launcher/ItemInfo;->mIsRetained:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public canBeDrop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canShowShortcutMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clone()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 317
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 319
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->clone()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public copyPosition(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 324
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 325
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    .line 326
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 327
    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    return-void
.end method

.method public findMyPendingSource()Lcom/miui/home/launcher/PendingSource;
    .locals 6

    .line 381
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 383
    :cond_0
    iget-wide v2, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 384
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/16 v4, -0x65

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 387
    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->getFolderIcon(Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public finishPending()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mPendingSource:Lcom/miui/home/launcher/PendingSource;

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0, p0}, Lcom/miui/home/launcher/PendingSource;->removePendingItem(Lcom/miui/home/launcher/PendingItem;)V

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mPendingSource:Lcom/miui/home/launcher/PendingSource;

    :cond_0
    return-void
.end method

.method public getAnnounceForDelete()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLable()Ljava/lang/CharSequence;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLastLaunchTime()J
    .locals 2

    .line 437
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->mLastLaunchTime:J

    return-wide v0
.end method

.method public getLaunchCounts()[I
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mLaunchCounts:[I

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUniqueTag()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    return v0

    .line 213
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public hasSamePosition(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 4

    .line 415
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isApplicatoin()Z
    .locals 1

    .line 433
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInFolder()Z
    .locals 4

    .line 352
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInHotseat()Z
    .locals 4

    .line 356
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInHotseatRecommend()Z
    .locals 4

    .line 360
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x67

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInWorkspace()Z
    .locals 4

    .line 348
    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOccupiedCell1x1()Z
    .locals 2

    .line 272
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOccupiedCellMoreThan1x1()Z
    .locals 2

    .line 268
    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isPending()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mPendingSource:Lcom/miui/home/launcher/PendingSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    const/4 v0, 0x0

    .line 171
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    const/16 v1, 0xb

    .line 172
    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/16 v1, 0xc

    .line 173
    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 174
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ItemInfo;->loadSpan(Landroid/database/Cursor;)V

    const/16 v0, 0xa

    .line 175
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_2

    :cond_2
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    const/16 v0, 0x8

    .line 176
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x7

    .line 177
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const/16 v0, 0x11

    .line 178
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 180
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->covertStringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_3

    .line 181
    array-length v1, v0

    iget-object v2, p0, Lcom/miui/home/launcher/ItemInfo;->mLaunchCounts:[I

    array-length v2, v2

    if-ne v1, v2, :cond_3

    .line 182
    iput-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->mLaunchCounts:[I

    :cond_3
    const/16 v0, 0x13

    .line 185
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_4

    const/16 v0, 0x14

    .line 188
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/Utilities;->getUserForSerialNumber(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    :cond_4
    return-void
.end method

.method public loadSpan(Landroid/database/Cursor;)V
    .locals 1

    const/16 v0, 0xd

    .line 193
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/16 v0, 0xe

    .line 194
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    return-void
.end method

.method public onAddSpan(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "spanX"

    .line 246
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanY"

    .line 247
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "itemType"

    .line 227
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "container"

    .line 228
    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "screen"

    .line 229
    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "cellX"

    .line 230
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    .line 231
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ItemInfo;->onAddSpan(Landroid/content/ContentValues;)V

    const-string v0, "launchCount"

    .line 233
    iget-object v1, p0, Lcom/miui/home/launcher/ItemInfo;->mLaunchCounts:[I

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->convertIntArrayToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "itemFlags"

    .line 234
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->itemFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemInfo;->mIsRetained:Z

    if-eqz v0, :cond_0

    const-string v0, "isShortcut"

    const/4 v1, 0x1

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 236
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    const-string p1, "profileId"

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public onLaunch()V
    .locals 3

    .line 309
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 310
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/miui/home/launcher/ItemInfo;->mLaunchCounts:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->mLastLaunchTime:J

    return-void
.end method

.method public printDetail()Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->printIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->printPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printIdentity()Ljava/lang/String;
    .locals 3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printPosition()Ljava/lang/String;
    .locals 3

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/miui/home/launcher/ItemInfo;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setUser(Landroid/os/UserHandle;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public startPending(Lcom/miui/home/launcher/PendingSource;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/miui/home/launcher/ItemInfo;->mPendingSource:Lcom/miui/home/launcher/PendingSource;

    .line 374
    iget-object p1, p0, Lcom/miui/home/launcher/ItemInfo;->mPendingSource:Lcom/miui/home/launcher/PendingSource;

    if-eqz p1, :cond_0

    .line 375
    invoke-interface {p1, p0}, Lcom/miui/home/launcher/PendingSource;->addPendingItem(Lcom/miui/home/launcher/PendingItem;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 0

    return-void
.end method

.method public upateUserToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    .line 251
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    const-string p1, "profileId"

    .line 253
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public updateUser(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "profile"

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "profile"

    .line 207
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    :cond_0
    return-void
.end method
