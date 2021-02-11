.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DragLayer$1yBlwsk2n8dHt2O2xi4z90DLhLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/DragLayer;

.field private final synthetic f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/DragLayer;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$DragLayer$1yBlwsk2n8dHt2O2xi4z90DLhLY;->f$0:Lcom/miui/home/launcher/DragLayer;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$DragLayer$1yBlwsk2n8dHt2O2xi4z90DLhLY;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$DragLayer$1yBlwsk2n8dHt2O2xi4z90DLhLY;->f$0:Lcom/miui/home/launcher/DragLayer;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$DragLayer$1yBlwsk2n8dHt2O2xi4z90DLhLY;->f$1:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragLayer;->lambda$updateWallpaperOffset$0(Lcom/miui/home/launcher/DragLayer;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
