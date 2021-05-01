.class public final synthetic Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$ho1--PqE3183D8Bpf2Tw9tzEG4w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/RemoteShortcutInfo;

.field private final synthetic f$1:Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$ho1--PqE3183D8Bpf2Tw9tzEG4w;->f$0:Lcom/miui/home/launcher/RemoteShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$ho1--PqE3183D8Bpf2Tw9tzEG4w;->f$1:Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$ho1--PqE3183D8Bpf2Tw9tzEG4w;->f$0:Lcom/miui/home/launcher/RemoteShortcutInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$ho1--PqE3183D8Bpf2Tw9tzEG4w;->f$1:Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->lambda$loadIconFromGlobal$200(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;)V

    return-void
.end method
