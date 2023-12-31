.class public Lcom/miui/launcher/common/FoldDisplayChangeManager;
.super Ljava/lang/Object;
.source "FoldDisplayChangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;
    }
.end annotation


# instance fields
.field private final mDisplayFoldListener:Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;

.field private mFoldDisplayChangeListener:Lcom/miui/launcher/common/FoldDisplayChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;-><init>(Lcom/miui/launcher/common/FoldDisplayChangeManager;Lcom/miui/launcher/common/FoldDisplayChangeManager$1;)V

    iput-object v0, p0, Lcom/miui/launcher/common/FoldDisplayChangeManager;->mDisplayFoldListener:Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/launcher/common/FoldDisplayChangeManager;)Lcom/miui/launcher/common/FoldDisplayChangeListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/launcher/common/FoldDisplayChangeManager;->mFoldDisplayChangeListener:Lcom/miui/launcher/common/FoldDisplayChangeListener;

    return-object p0
.end method


# virtual methods
.method public addAndStartMonitor(Lcom/miui/launcher/common/FoldDisplayChangeListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/miui/launcher/common/FoldDisplayChangeManager;->mFoldDisplayChangeListener:Lcom/miui/launcher/common/FoldDisplayChangeListener;

    .line 23
    iget-object p0, p0, Lcom/miui/launcher/common/FoldDisplayChangeManager;->mDisplayFoldListener:Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;

    invoke-static {p0}, Lcom/miui/launcher/common/FoldDisplayChangeUtils;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    return-void
.end method

.method public stopMonitor()V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/launcher/common/FoldDisplayChangeManager;->mDisplayFoldListener:Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;

    invoke-static {p0}, Lcom/miui/launcher/common/FoldDisplayChangeUtils;->unRegisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    return-void
.end method
