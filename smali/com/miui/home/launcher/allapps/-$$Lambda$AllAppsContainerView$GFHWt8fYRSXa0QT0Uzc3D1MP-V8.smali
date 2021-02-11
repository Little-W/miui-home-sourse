.class public final synthetic Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsContainerView$GFHWt8fYRSXa0QT0Uzc3D1MP-V8;
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

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsContainerView$GFHWt8fYRSXa0QT0Uzc3D1MP-V8;->f$0:Lcom/miui/home/launcher/DragObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsContainerView$GFHWt8fYRSXa0QT0Uzc3D1MP-V8;->f$0:Lcom/miui/home/launcher/DragObject;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->lambda$onDropBack$1(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method
