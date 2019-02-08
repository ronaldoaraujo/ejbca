RSpec.describe RevokeCert do
  let(:revoke_cert) { build :revoke_cert }

  it '#to_xml' do
    result = <<-XML
    <revokeCert>
      <arg0>CN=ManagementCA,O=EJBCA Sample,C=SE</arg0>
      <arg1>7FEDD0CA5B31BF08</arg1>
      <arg2>6</arg2>
    </revokeCert>
    XML

    expect(revoke_cert.to_xml).to eq_xml result
  end
end
