.class public final synthetic Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$XcQZ064kHtdlZaOaKhVLzeqkXu8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/sound/SoundPoolHelper;

.field private final synthetic f$1:I

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/sound/SoundPoolHelper;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$XcQZ064kHtdlZaOaKhVLzeqkXu8;->f$0:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    iput p2, p0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$XcQZ064kHtdlZaOaKhVLzeqkXu8;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$XcQZ064kHtdlZaOaKhVLzeqkXu8;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$XcQZ064kHtdlZaOaKhVLzeqkXu8;->f$0:Lcom/miui/home/launcher/sound/SoundPoolHelper;

    iget v1, p0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$XcQZ064kHtdlZaOaKhVLzeqkXu8;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/sound/-$$Lambda$SoundPoolHelper$XcQZ064kHtdlZaOaKhVLzeqkXu8;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/sound/SoundPoolHelper;->lambda$playAsync$1(Lcom/miui/home/launcher/sound/SoundPoolHelper;IF)V

    return-void
.end method
