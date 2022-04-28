.class final Lcom/miui/home/settings/AllDeleteAppActivity$initData$2;
.super Ljava/lang/Object;
.source "AllDeleteAppActivity.kt"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex2/functions/Consumer<",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/home/settings/DeleteAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/AllDeleteAppActivity;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/AllDeleteAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity$initData$2;->this$0:Lcom/miui/home/settings/AllDeleteAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/AllDeleteAppActivity$initData$2;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/settings/DeleteAppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/miui/home/settings/AllDeleteAppActivity$initData$2;->this$0:Lcom/miui/home/settings/AllDeleteAppActivity;

    invoke-static {v0, p1}, Lcom/miui/home/settings/AllDeleteAppActivity;->access$updateUninstallAppList(Lcom/miui/home/settings/AllDeleteAppActivity;Ljava/util/List;)V

    return-void
.end method
