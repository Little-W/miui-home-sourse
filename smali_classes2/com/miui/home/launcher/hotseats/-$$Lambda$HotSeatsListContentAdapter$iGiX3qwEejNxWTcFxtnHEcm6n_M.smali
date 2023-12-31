.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContentAdapter$iGiX3qwEejNxWTcFxtnHEcm6n_M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContentAdapter$iGiX3qwEejNxWTcFxtnHEcm6n_M;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContentAdapter$iGiX3qwEejNxWTcFxtnHEcm6n_M;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method


# virtual methods
.method public final onColorModeChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContentAdapter$iGiX3qwEejNxWTcFxtnHEcm6n_M;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListContentAdapter$iGiX3qwEejNxWTcFxtnHEcm6n_M;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->lambda$onCreateViewHolder$1$HotSeatsListContentAdapter(Lcom/miui/home/launcher/ShortcutIcon;Z)V

    return-void
.end method
