.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$Kyf6icQCXCi0i2oBOIhsR3UZYVg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$Kyf6icQCXCi0i2oBOIhsR3UZYVg;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$Kyf6icQCXCi0i2oBOIhsR3UZYVg;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$Kyf6icQCXCi0i2oBOIhsR3UZYVg;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$Kyf6icQCXCi0i2oBOIhsR3UZYVg;->f$1:Landroid/content/Context;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/ScreenUtils;->lambda$asynIsAlreadyInstalled$0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
