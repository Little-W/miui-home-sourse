.class public final synthetic Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$vydaWgpERMm3TqROo8_f0z2vzLI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/ref/WeakReference;

.field private final synthetic f$1:Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$vydaWgpERMm3TqROo8_f0z2vzLI;->f$0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$vydaWgpERMm3TqROo8_f0z2vzLI;->f$1:Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$vydaWgpERMm3TqROo8_f0z2vzLI;->f$0:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$vydaWgpERMm3TqROo8_f0z2vzLI;->f$1:Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->lambda$loadIconFromGlobal$4(Ljava/lang/ref/WeakReference;Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;)V

    return-void
.end method
