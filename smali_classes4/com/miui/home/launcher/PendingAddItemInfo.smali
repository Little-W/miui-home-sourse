.class public Lcom/miui/home/launcher/PendingAddItemInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "PendingAddItemInfo.java"


# instance fields
.field public componentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/miui/home/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0
.end method
