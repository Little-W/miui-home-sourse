.class Lcom/miui/home/launcher/Launcher$85;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 10326
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$85;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidgetTouched(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 0

    .line 10329
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$85;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->access$11202(Lcom/miui/home/launcher/Launcher;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    const/4 p0, 0x0

    return p0
.end method
