.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Landroid/graphics/RectF;

.field private final synthetic f$2:Landroid/graphics/RectF;

.field private final synthetic f$3:F

.field private final synthetic f$4:I

.field private final synthetic f$5:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$6:F

.field private final synthetic f$7:Landroid/graphics/Rect;

.field private final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;Landroid/graphics/RectF;FILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$1:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$2:Landroid/graphics/RectF;

    iput p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$3:F

    iput p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$4:I

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$5:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput p7, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$6:F

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$7:Landroid/graphics/Rect;

    iput p9, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$1:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$2:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$3:F

    iget v4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$4:I

    iget-object v5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$5:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget v6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$6:F

    iget-object v7, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$7:Landroid/graphics/Rect;

    iget v8, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$d_hUIHzAf5LTExdsKVmAfS8PE6A;->f$8:I

    invoke-static/range {v0 .. v8}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeAnim$22(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;Landroid/graphics/RectF;FILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/Rect;I)V

    return-void
.end method
