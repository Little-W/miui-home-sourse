.class Lcom/miui/home/launcher/SuperDraglayer$2;
.super Ljava/lang/Object;
.source "SuperDraglayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SuperDraglayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SuperDraglayer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SuperDraglayer;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$2;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer$2;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SuperDraglayer;->updateWallpaperOffset()V

    return-void
.end method
