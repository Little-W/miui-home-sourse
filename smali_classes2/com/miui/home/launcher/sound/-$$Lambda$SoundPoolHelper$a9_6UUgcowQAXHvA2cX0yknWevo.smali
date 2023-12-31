.class public final synthetic Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$a9_6UUgcowQAXHvA2cX0yknWevo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$a9_6UUgcowQAXHvA2cX0yknWevo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$a9_6UUgcowQAXHvA2cX0yknWevo;

    invoke-direct {v0}, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$a9_6UUgcowQAXHvA2cX0yknWevo;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$a9_6UUgcowQAXHvA2cX0yknWevo;->INSTANCE:Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$a9_6UUgcowQAXHvA2cX0yknWevo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->lambda$new$0(Landroid/media/SoundPool;II)V

    return-void
.end method
