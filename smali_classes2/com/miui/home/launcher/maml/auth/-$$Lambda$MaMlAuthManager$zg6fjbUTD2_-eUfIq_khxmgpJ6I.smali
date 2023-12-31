.class public final synthetic Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$zg6fjbUTD2_-eUfIq_khxmgpJ6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

.field private final synthetic f$1:Lmiui/drm/DrmManager$DrmResult;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lmiui/drm/DrmManager$DrmResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$zg6fjbUTD2_-eUfIq_khxmgpJ6I;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$zg6fjbUTD2_-eUfIq_khxmgpJ6I;->f$1:Lmiui/drm/DrmManager$DrmResult;

    iput-object p3, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$zg6fjbUTD2_-eUfIq_khxmgpJ6I;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$zg6fjbUTD2_-eUfIq_khxmgpJ6I;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$zg6fjbUTD2_-eUfIq_khxmgpJ6I;->f$1:Lmiui/drm/DrmManager$DrmResult;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$zg6fjbUTD2_-eUfIq_khxmgpJ6I;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->lambda$recheckAuthority$1(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lmiui/drm/DrmManager$DrmResult;Ljava/lang/String;)Lmiui/drm/DrmManager$DrmResult;

    move-result-object p0

    return-object p0
.end method
