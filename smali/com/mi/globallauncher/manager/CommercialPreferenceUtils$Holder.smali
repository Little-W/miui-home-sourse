.class Lcom/mi/globallauncher/manager/CommercialPreferenceUtils$Holder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;-><init>(Lcom/mi/globallauncher/manager/CommercialPreferenceUtils$1;)V

    sput-object v0, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils$Holder;->sInstance:Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;
    .locals 1

    sget-object v0, Lcom/mi/globallauncher/manager/CommercialPreferenceUtils$Holder;->sInstance:Lcom/mi/globallauncher/manager/CommercialPreferenceUtils;

    return-object v0
.end method
