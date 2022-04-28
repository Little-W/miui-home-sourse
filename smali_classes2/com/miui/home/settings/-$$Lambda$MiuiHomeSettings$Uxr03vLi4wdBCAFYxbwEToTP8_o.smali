.class public final synthetic Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$Uxr03vLi4wdBCAFYxbwEToTP8_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$Uxr03vLi4wdBCAFYxbwEToTP8_o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$Uxr03vLi4wdBCAFYxbwEToTP8_o;

    invoke-direct {v0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$Uxr03vLi4wdBCAFYxbwEToTP8_o;-><init>()V

    sput-object v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$Uxr03vLi4wdBCAFYxbwEToTP8_o;->INSTANCE:Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$Uxr03vLi4wdBCAFYxbwEToTP8_o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$initPrivacyThumbnailBlurPref$7(Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
