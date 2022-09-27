.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$2:F

.field private final synthetic f$3:Landroid/graphics/Rect;

.field private final synthetic f$4:I

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/Rect;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$2:F

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$3:Landroid/graphics/Rect;

    iput p5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$4:I

    iput p6, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$2:F

    iget-object v3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$3:Landroid/graphics/Rect;

    iget v4, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$4:I

    iget v5, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$qbb2HeFYX1UugD_Pfl6SrIb6wCo;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/miui/home/recents/NavStubView;->lambda$startAppToHomeAnim$24(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/Rect;II)V

    return-void
.end method
