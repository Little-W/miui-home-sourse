.class Lcom/mi/globallauncher/config/CommercialClient$SingletonHolder;
.super Ljava/lang/Object;
.source "CommercialClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/config/CommercialClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/mi/globallauncher/config/CommercialClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/mi/globallauncher/config/CommercialClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mi/globallauncher/config/CommercialClient;-><init>(Lcom/mi/globallauncher/config/CommercialClient$1;)V

    sput-object v0, Lcom/mi/globallauncher/config/CommercialClient$SingletonHolder;->INSTANCE:Lcom/mi/globallauncher/config/CommercialClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/mi/globallauncher/config/CommercialClient;
    .locals 1

    .line 28
    sget-object v0, Lcom/mi/globallauncher/config/CommercialClient$SingletonHolder;->INSTANCE:Lcom/mi/globallauncher/config/CommercialClient;

    return-object v0
.end method
