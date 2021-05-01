.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$Utilities$w3nUpS_92Son2XNqfgwvxvYwdhI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$w3nUpS_92Son2XNqfgwvxvYwdhI;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$w3nUpS_92Son2XNqfgwvxvYwdhI;->f$0:Landroid/content/Context;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/Utilities;->lambda$updatemIncompatibleAppList$146(Landroid/content/Context;Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
