.class Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;
.super Ljava/lang/Object;
.source "RecommendController.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/recommend/RecommendController;->remove(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

.field final synthetic val$item:Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;->val$item:Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z
    .locals 0

    .line 360
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;->val$item:Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 357
    check-cast p1, Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;->test(Lcom/miui/home/launcher/commercial/recommend/RecommendInfo;)Z

    move-result p0

    return p0
.end method
