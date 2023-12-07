.class public Lcom/android/systemui/shared/recents/system/InputEventCompat;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDisplayId(Landroid/view/InputEvent;I)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lmiui/view/InputEventExpose;->box(Ljava/lang/Object;)Lmiui/view/InputEventExpose;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/view/InputEventExpose;->setDisplayId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
