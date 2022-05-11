.class public abstract Lcom/miui/home/launcher/common/CurrentIndexMediator;
.super Ljava/lang/Object;
.source "CurrentIndexMediator.java"


# instance fields
.field protected mCurrentScreenIndex:I

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mCurrentScreenIndex:I

    .line 21
    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediator;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public abstract getCurrentAllScreenID()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentAllScreenIndex()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isInCurrentScreen(I)Z
.end method

.method public abstract onCreate()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract updateIndex(IZ)V
.end method
