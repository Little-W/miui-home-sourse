.class final Lcom/miui/home/settings/AllHideAppActivity$initData$2;
.super Ljava/lang/Object;
.source "AllHideAppActivity.kt"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex2/functions/Consumer<",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/home/launcher/AppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/AllHideAppActivity;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/AllHideAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/AllHideAppActivity$initData$2;->this$0:Lcom/miui/home/settings/AllHideAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/AllHideAppActivity$initData$2;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity$initData$2;->this$0:Lcom/miui/home/settings/AllHideAppActivity;

    invoke-static {v0, p1}, Lcom/miui/home/settings/AllHideAppActivity;->access$updateHideAppList(Lcom/miui/home/settings/AllHideAppActivity;Ljava/util/List;)V

    return-void
.end method
