.class public final synthetic Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$ngUfWUvhuvD42RlkHumEg9IAgpE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/sound/SoundPoolHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/sound/SoundPoolHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$ngUfWUvhuvD42RlkHumEg9IAgpE;->f$0:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$ngUfWUvhuvD42RlkHumEg9IAgpE;->f$0:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->lambda$releaseAsync$2$SoundPoolHelper()V

    return-void
.end method
