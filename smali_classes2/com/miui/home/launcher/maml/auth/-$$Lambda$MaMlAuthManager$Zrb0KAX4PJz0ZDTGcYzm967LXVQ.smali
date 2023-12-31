.class public final synthetic Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$Zrb0KAX4PJz0ZDTGcYzm967LXVQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

.field private final synthetic f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$Zrb0KAX4PJz0ZDTGcYzm967LXVQ;->f$0:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$Zrb0KAX4PJz0ZDTGcYzm967LXVQ;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iput p3, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$Zrb0KAX4PJz0ZDTGcYzm967LXVQ;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$Zrb0KAX4PJz0ZDTGcYzm967LXVQ;->f$0:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$Zrb0KAX4PJz0ZDTGcYzm967LXVQ;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget p0, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$Zrb0KAX4PJz0ZDTGcYzm967LXVQ;->f$2:I

    check-cast p1, Lmiui/drm/DrmManager$DrmResult;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->lambda$recheckAuthority$2$MaMlAuthManager(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ILmiui/drm/DrmManager$DrmResult;)V

    return-void
.end method
