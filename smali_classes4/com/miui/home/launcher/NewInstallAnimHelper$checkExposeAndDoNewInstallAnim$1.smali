.class final Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NewInstallAnimHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/NewInstallAnimHelper;->checkExposeAndDoNewInstallAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/miui/home/launcher/NewInstallAppIcon;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/NewInstallAnimHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/NewInstallAnimHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$1;->this$0:Lcom/miui/home/launcher/NewInstallAnimHelper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcom/miui/home/launcher/NewInstallAppIcon;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$1;->invoke(Lcom/miui/home/launcher/NewInstallAppIcon;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/miui/home/launcher/NewInstallAppIcon;)Z
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$1;->this$0:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-static {p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->access$getMExposeItemList$p(Lcom/miui/home/launcher/NewInstallAnimHelper;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/miui/home/launcher/NewInstallAppIcon;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
