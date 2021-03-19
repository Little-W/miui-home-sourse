.class public Lcom/miui/home/launcher/ToggleManager;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# static fields
.field private static final TOGGLES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/ToggleManager;->TOGGLES:Landroid/util/SparseArray;

    .line 57
    sget-object v0, Lcom/miui/home/launcher/ToggleManager;->TOGGLES:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "status_bar_toggle_lock.png"

    const-string v3, "status_bar_toggle_lock_on.png"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/miui/home/launcher/ToggleManager;->TOGGLES:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "status_bar_toggle_wifi_off.png"

    const-string v3, "status_bar_toggle_wifi_on.png"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/miui/home/launcher/ToggleManager;->TOGGLES:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "status_bar_toggle_torch_off.png"

    const-string v3, "status_bar_toggle_torch_on.png"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/miui/home/launcher/ToggleManager;->TOGGLES:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "status_bar_toggle_data_off.png"

    const-string v3, "status_bar_toggle_data_on.png"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/miui/home/launcher/ToggleManager;->TOGGLES:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "status_bar_toggle_flight_mode_off.png"

    const-string v3, "status_bar_toggle_flight_mode_on.png"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/miui/home/launcher/ToggleManager;->TOGGLES:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "status_bar_toggle_wifi_ap_off.png"

    const-string v3, "status_bar_toggle_wifi_ap_on.png"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/miui/home/launcher/ToggleManager;->TOGGLES:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "status_bar_toggle_bluetooth_off.png"

    const-string v3, "status_bar_toggle_bluetooth_on.png"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 67
    sget-object v0, Lcom/miui/home/launcher/ToggleManager;->TOGGLES:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 68
    invoke-static {p1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/ToggleManager;->TOGGLES:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/home/launcher/ToggleManager;->TOGGLES:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 69
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p1, v0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->initDrawable(ILandroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lcom/miui/home/launcher/ToggleDrawable;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/ToggleDrawable;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
