.class Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;
.super Ljava/lang/Object;
.source "AllAppsContainerView.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onScrollUpEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->accept(Ljava/lang/Void;)V

    return-void
.end method

.method public accept(Ljava/lang/Void;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->access$000(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->scrollToWorkPage()V

    return-void
.end method
