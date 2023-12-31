.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$SuperDraglayer$OtnL8bIPl9wCPxlhgTRzhJ8vWwA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/SuperDraglayer;

.field private final synthetic f$1:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/SuperDraglayer;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$SuperDraglayer$OtnL8bIPl9wCPxlhgTRzhJ8vWwA;->f$0:Lcom/miui/home/launcher/SuperDraglayer;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$SuperDraglayer$OtnL8bIPl9wCPxlhgTRzhJ8vWwA;->f$1:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$SuperDraglayer$OtnL8bIPl9wCPxlhgTRzhJ8vWwA;->f$0:Lcom/miui/home/launcher/SuperDraglayer;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$SuperDraglayer$OtnL8bIPl9wCPxlhgTRzhJ8vWwA;->f$1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/SuperDraglayer;->lambda$updateWallpaperOffset$0$SuperDraglayer(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
