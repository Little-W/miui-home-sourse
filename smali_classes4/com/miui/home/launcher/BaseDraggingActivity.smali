.class public abstract Lcom/miui/home/launcher/BaseDraggingActivity;
.super Lcom/miui/home/launcher/BaseActivity;
.source "BaseDraggingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseActivity;-><init>()V

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/miui/home/launcher/BaseDraggingActivity;
    .locals 1

    .line 29
    instance-of v0, p0, Lcom/miui/home/launcher/BaseDraggingActivity;

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Lcom/miui/home/launcher/BaseDraggingActivity;

    return-object p0

    .line 32
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/BaseDraggingActivity;

    return-object p0
.end method


# virtual methods
.method public abstract getDragLayer()Lcom/miui/home/launcher/view/BaseDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/home/launcher/view/BaseDragLayer<",
            "+",
            "Lcom/miui/home/launcher/BaseDraggingActivity;",
            ">;"
        }
    .end annotation
.end method
