.class public final synthetic Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$nwItNozYOO7kfJfnTgP0Sc0Ub6s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$nwItNozYOO7kfJfnTgP0Sc0Ub6s;->f$0:Lcom/miui/home/launcher/DragObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$nwItNozYOO7kfJfnTgP0Sc0Ub6s;->f$0:Lcom/miui/home/launcher/DragObject;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->lambda$onDropBack$1(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method
