.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$ZaWC3hLPITdlF4RRFP8zZEJ72VI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/IBackAnimView;

.field private final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZaWC3hLPITdlF4RRFP8zZEJ72VI;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZaWC3hLPITdlF4RRFP8zZEJ72VI;->f$1:Lcom/miui/home/launcher/IBackAnimView;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZaWC3hLPITdlF4RRFP8zZEJ72VI;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZaWC3hLPITdlF4RRFP8zZEJ72VI;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZaWC3hLPITdlF4RRFP8zZEJ72VI;->f$1:Lcom/miui/home/launcher/IBackAnimView;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ZaWC3hLPITdlF4RRFP8zZEJ72VI;->f$2:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->lambda$getShowingItem$71(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
