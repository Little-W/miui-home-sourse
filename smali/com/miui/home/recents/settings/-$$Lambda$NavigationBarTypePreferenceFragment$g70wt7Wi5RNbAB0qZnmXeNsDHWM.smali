.class public final synthetic Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g70wt7Wi5RNbAB0qZnmXeNsDHWM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava8/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava8/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g70wt7Wi5RNbAB0qZnmXeNsDHWM;->f$0:Ljava8/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$g70wt7Wi5RNbAB0qZnmXeNsDHWM;->f$0:Ljava8/util/function/Supplier;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$asyncSetCheckboxPreferenceCheckedStatus$18(Ljava8/util/function/Supplier;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
