.class public Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaitForAddScreenReadyTask"
.end annotation


# instance fields
.field private mAddLaterIfInvalid:Z

.field private mCallback:Ljava/lang/Runnable;

.field private mCellX:I

.field private mCellY:I

.field private mContainer:J

.field private mItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mScreenId:J

.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V
    .locals 0

    .line 7562
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7563
    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    .line 7564
    iput-wide p3, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mScreenId:J

    .line 7565
    iput-wide p5, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mContainer:J

    .line 7566
    iput p7, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mCellX:I

    .line 7567
    iput p8, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mCellY:I

    .line 7568
    iput-boolean p9, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mAddLaterIfInvalid:Z

    .line 7569
    iput-object p10, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 7578
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-object p0
.end method

.method public run()V
    .locals 10

    .line 7574
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v2, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mScreenId:J

    iget-wide v4, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mContainer:J

    iget v6, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mCellX:I

    iget v7, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mCellY:I

    iget-boolean v8, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mAddLaterIfInvalid:Z

    iget-object v9, p0, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;->mCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v9}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    return-void
.end method
