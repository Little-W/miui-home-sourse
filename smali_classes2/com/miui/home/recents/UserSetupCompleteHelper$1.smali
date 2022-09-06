.class Lcom/miui/home/recents/UserSetupCompleteHelper$1;
.super Landroid/database/ContentObserver;
.source "UserSetupCompleteHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/UserSetupCompleteHelper;->regisUserSetupComplete(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 29
    invoke-static {}, Lcom/miui/home/recents/UserSetupCompleteHelper;->updateUserSetupComplete()V

    return-void
.end method
