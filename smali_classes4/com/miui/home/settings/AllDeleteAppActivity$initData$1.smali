.class final Lcom/miui/home/settings/AllDeleteAppActivity$initData$1;
.super Ljava/lang/Object;
.source "AllDeleteAppActivity.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/AllDeleteAppActivity;->initData()V
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
.field final synthetic this$0:Lcom/miui/home/settings/AllDeleteAppActivity;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/AllDeleteAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity$initData$1;->this$0:Lcom/miui/home/settings/AllDeleteAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/settings/AllDeleteAppActivity$initData$1;->call()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final call()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/miui/home/settings/AllDeleteAppActivity$initData$1;->this$0:Lcom/miui/home/settings/AllDeleteAppActivity;

    invoke-static {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->access$getDeleteAppInfo(Lcom/miui/home/settings/AllDeleteAppActivity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
