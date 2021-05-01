.class Lcom/miui/home/launcher/sound/SoundPoolHelper$1;
.super Ljava/lang/Object;
.source "SoundPoolHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/sound/SoundPoolHelper;->releaseAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/sound/SoundPoolHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/sound/SoundPoolHelper;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper$1;->this$0:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/sound/SoundPoolHelper$1;->this$0:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->access$000(Lcom/miui/home/launcher/sound/SoundPoolHelper;)V

    return-void
.end method
