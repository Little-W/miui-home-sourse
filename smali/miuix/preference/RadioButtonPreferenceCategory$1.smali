.class Lmiuix/preference/RadioButtonPreferenceCategory$1;
.super Ljava/lang/Object;
.source "RadioButtonPreferenceCategory.java"

# interfaces
.implements Lmiuix/preference/OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioButtonPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-static {v0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$000(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-static {v0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$100(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 36
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-static {v0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$200(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method public onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 28
    check-cast p1, Landroid/widget/Checkable;

    .line 29
    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
