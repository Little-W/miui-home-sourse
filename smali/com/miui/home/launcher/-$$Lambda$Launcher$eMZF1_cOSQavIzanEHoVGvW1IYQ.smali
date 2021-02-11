.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$eMZF1_cOSQavIzanEHoVGvW1IYQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ILandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMZF1_cOSQavIzanEHoVGvW1IYQ;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMZF1_cOSQavIzanEHoVGvW1IYQ;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMZF1_cOSQavIzanEHoVGvW1IYQ;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMZF1_cOSQavIzanEHoVGvW1IYQ;->f$3:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMZF1_cOSQavIzanEHoVGvW1IYQ;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMZF1_cOSQavIzanEHoVGvW1IYQ;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMZF1_cOSQavIzanEHoVGvW1IYQ;->f$2:I

    iget-object v3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$eMZF1_cOSQavIzanEHoVGvW1IYQ;->f$3:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/Launcher;->lambda$getShowingItem$43(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
