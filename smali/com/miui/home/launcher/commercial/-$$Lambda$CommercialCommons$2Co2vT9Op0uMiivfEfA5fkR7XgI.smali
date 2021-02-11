.class public final synthetic Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$2Co2vT9Op0uMiivfEfA5fkR7XgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/RemoteShortcutInfo;

.field private final synthetic f$1:Lcom/miui/msa/internal/preinstall/v1/ImageCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/msa/internal/preinstall/v1/ImageCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$2Co2vT9Op0uMiivfEfA5fkR7XgI;->f$0:Lcom/miui/home/launcher/RemoteShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$2Co2vT9Op0uMiivfEfA5fkR7XgI;->f$1:Lcom/miui/msa/internal/preinstall/v1/ImageCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$2Co2vT9Op0uMiivfEfA5fkR7XgI;->f$0:Lcom/miui/home/launcher/RemoteShortcutInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$2Co2vT9Op0uMiivfEfA5fkR7XgI;->f$1:Lcom/miui/msa/internal/preinstall/v1/ImageCallback;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->lambda$loadIconFromCN$5(Lcom/miui/home/launcher/RemoteShortcutInfo;Lcom/miui/msa/internal/preinstall/v1/ImageCallback;)V

    return-void
.end method
