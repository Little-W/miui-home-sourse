.class public final Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;
.super Ljava/lang/Object;
.source "ConvertSizeController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/convertsize/ConvertSizeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;

    invoke-direct {v0}, Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;->$$INSTANCE:Lcom/miui/home/launcher/convertsize/ConvertSizeController$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getController()Lcom/miui/home/launcher/convertsize/ConvertSizeController;
    .locals 0

    .line 11
    sget-object p0, Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;->INSTANCE:Lcom/miui/home/launcher/convertsize/FolderIconConvertSizeController;

    check-cast p0, Lcom/miui/home/launcher/convertsize/ConvertSizeController;

    return-object p0
.end method
