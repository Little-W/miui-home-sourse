.class public final enum Lcom/miui/home/launcher/Workspace$DirectionProperty;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DirectionProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/Workspace$DirectionProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/Workspace$DirectionProperty;

.field public static final enum ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

.field public static final enum X:Lcom/miui/home/launcher/Workspace$DirectionProperty;


# instance fields
.field private final viewProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3647
    new-instance v0, Lcom/miui/home/launcher/Workspace$DirectionProperty;

    const-string v1, "X"

    sget-object v2, Lcom/miui/home/launcher/Workspace;->TRANSLATION_X:Lmiuix/animation/property/FloatProperty;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/home/launcher/Workspace$DirectionProperty;-><init>(Ljava/lang/String;ILandroid/util/Property;)V

    sput-object v0, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    .line 3648
    new-instance v0, Lcom/miui/home/launcher/Workspace$DirectionProperty;

    const-string v1, "ALPHA"

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/miui/home/launcher/Workspace$DirectionProperty;-><init>(Ljava/lang/String;ILandroid/util/Property;)V

    sput-object v0, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    const/4 v0, 0x2

    .line 3646
    new-array v0, v0, [Lcom/miui/home/launcher/Workspace$DirectionProperty;

    sget-object v1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->X:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/launcher/Workspace$DirectionProperty;->ALPHA:Lcom/miui/home/launcher/Workspace$DirectionProperty;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/home/launcher/Workspace$DirectionProperty;->$VALUES:[Lcom/miui/home/launcher/Workspace$DirectionProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/util/Property;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 3652
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3653
    iput-object p3, p0, Lcom/miui/home/launcher/Workspace$DirectionProperty;->viewProperty:Landroid/util/Property;

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/home/launcher/Workspace$DirectionProperty;)Landroid/util/Property;
    .locals 0

    .line 3646
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$DirectionProperty;->viewProperty:Landroid/util/Property;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/Workspace$DirectionProperty;
    .locals 1

    .line 3646
    const-class v0, Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Workspace$DirectionProperty;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/Workspace$DirectionProperty;
    .locals 1

    .line 3646
    sget-object v0, Lcom/miui/home/launcher/Workspace$DirectionProperty;->$VALUES:[Lcom/miui/home/launcher/Workspace$DirectionProperty;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/Workspace$DirectionProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/Workspace$DirectionProperty;

    return-object v0
.end method
