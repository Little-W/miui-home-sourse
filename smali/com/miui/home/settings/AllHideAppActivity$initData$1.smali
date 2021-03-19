.class final Lcom/miui/home/settings/AllHideAppActivity$initData$1;
.super Ljava/lang/Object;
.source "AllHideAppActivity.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/AllHideAppActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/AllHideAppActivity;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/AllHideAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/AllHideAppActivity$initData$1;->this$0:Lcom/miui/home/settings/AllHideAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/miui/home/settings/AllHideAppActivity$initData$1;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity$initData$1;->this$0:Lcom/miui/home/settings/AllHideAppActivity;

    invoke-static {v0}, Lcom/miui/home/settings/AllHideAppActivity;->access$getHideApps(Lcom/miui/home/settings/AllHideAppActivity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
