.class Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "FoldDisplayChangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/common/FoldDisplayChangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayFoldListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/launcher/common/FoldDisplayChangeManager;


# direct methods
.method private constructor <init>(Lcom/miui/launcher/common/FoldDisplayChangeManager;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;->this$0:Lcom/miui/launcher/common/FoldDisplayChangeManager;

    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/launcher/common/FoldDisplayChangeManager;Lcom/miui/launcher/common/FoldDisplayChangeManager$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;-><init>(Lcom/miui/launcher/common/FoldDisplayChangeManager;)V

    return-void
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;->this$0:Lcom/miui/launcher/common/FoldDisplayChangeManager;

    invoke-static {v0}, Lcom/miui/launcher/common/FoldDisplayChangeManager;->access$100(Lcom/miui/launcher/common/FoldDisplayChangeManager;)Lcom/miui/launcher/common/FoldDisplayChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/launcher/common/FoldDisplayChangeManager$DisplayFoldListener;->this$0:Lcom/miui/launcher/common/FoldDisplayChangeManager;

    invoke-static {v0}, Lcom/miui/launcher/common/FoldDisplayChangeManager;->access$100(Lcom/miui/launcher/common/FoldDisplayChangeManager;)Lcom/miui/launcher/common/FoldDisplayChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/launcher/common/FoldDisplayChangeListener;->onDisplayFoldChanged(IZ)V

    :cond_0
    return-void
.end method
