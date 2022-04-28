.class final Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$onLauncherStartLoading$2$1;
.super Ljava/lang/Object;
.source "NoWordSwitchAnimHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->onLauncherStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/miui/home/launcher/hotseats/HotSeats;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeats;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$onLauncherStartLoading$2$1;->$it:Lcom/miui/home/launcher/hotseats/HotSeats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$onLauncherStartLoading$2$1;->$it:Lcom/miui/home/launcher/hotseats/HotSeats;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->setAlpha(F)V

    const-string v0, "NoWordSwitchAnimHelper"

    const-string v1, "start loading visible hotSeats"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
