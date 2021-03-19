.class final Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HideAppList.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/HideAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/miui/home/launcher/HideAppList;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;->INSTANCE:Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/miui/home/launcher/HideAppList;
    .locals 2

    .line 16
    new-instance v0, Lcom/miui/home/launcher/HideAppList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/HideAppList;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/miui/home/launcher/HideAppList$Companion$sHideAppList$2;->invoke()Lcom/miui/home/launcher/HideAppList;

    move-result-object v0

    return-object v0
.end method
