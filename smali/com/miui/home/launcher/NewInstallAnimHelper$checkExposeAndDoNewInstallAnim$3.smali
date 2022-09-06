.class final Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$3;
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
        "Lcom/miui/home/launcher/ShortcutInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/NewInstallAnimHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/NewInstallAnimHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$3;->this$0:Lcom/miui/home/launcher/NewInstallAnimHelper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$3;->invoke(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/NewInstallAnimHelper$checkExposeAndDoNewInstallAnim$3;->this$0:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->access$getMBuffer$p(Lcom/miui/home/launcher/NewInstallAnimHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
