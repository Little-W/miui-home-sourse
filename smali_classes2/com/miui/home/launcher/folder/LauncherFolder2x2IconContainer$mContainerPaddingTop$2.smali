.class final Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer$mContainerPaddingTop$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LauncherFolder2x2IconContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer$mContainerPaddingTop$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer$mContainerPaddingTop$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer$mContainerPaddingTop$2;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer$mContainerPaddingTop$2;->INSTANCE:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer$mContainerPaddingTop$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 0

    .line 29
    sget-object p0, Lcom/miui/home/launcher/folder/BigFolderConfig;->Companion:Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;->bigFolderPaddingTop()I

    move-result p0

    return p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer$mContainerPaddingTop$2;->invoke()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
