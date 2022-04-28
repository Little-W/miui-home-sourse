.class public Lcom/miui/home/launcher/DragLayer;
.super Lcom/miui/home/launcher/SuperDraglayer;
.source "DragLayer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/SuperDraglayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getWidgetResizeDragController(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragController;)Lcom/miui/home/launcher/WidgetResizeDragController;
    .locals 2

    .line 92
    new-instance v0, Lcom/miui/home/launcher/WidgetResizeDragController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/miui/home/launcher/WidgetResizeDragController;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/DragController;Lcom/miui/home/launcher/DragLayer;)V

    return-object v0
.end method
